!-------------------------------------
module position
    implicit none
    integer,parameter,public :: dp=selected_real_kind(2*precision(1.0))
    public :: DENSITY1D
    integer,parameter,public             :: NRHO=1000
    real(kind=dp),parameter,public       :: EMACH=1.0e-8_dp
    integer,public                       :: IMC
    real(kind=dp),public                 :: LENGTH,DRHO
    real(kind=dp),dimension(3),public    :: RE,RNEU
    real(kind=dp),public,dimension(NRHO) :: RHORAD,AVRHORAD
contains
!-------------------------------------
subroutine DENSITY1D
    ! Radial density RHORAD is a function of distance s from nucleus and
    ! normalized to 1=sum_s 4*PI*s**2 ds RHORAD(s). It is discretized
    ! in units of DRHO with NRHO sections. Values below DRHO are added
    ! to first unit and those above NRHO*DRHO added to last unit.
    integer       :: j
    real(kind=dp) :: s,h
    real(kind=dp),  parameter :: PI  = 3.1415927410125732_dp
    RHORAD=0.0_dp
    h=4.0_dp*PI*DRHO
    s=max (sqrt(sum (RNEU(1:3)**2)),DRHO+EMACH)
    s=min (s,NRHO*DRHO)
    j=int (s/DRHO)
    RHORAD(j)=1/h/s**2
end subroutine DENSITY1D
!-------------------------------------
end module position
!-------------------------------------
!-------------------------------------
! A full QMC run for the H atom
program HMC
    use position
    !
    implicit none

    ! Number of division of parameter APLHA
    integer, parameter :: NALPHA = 5

    ! Number of division of parameter WAVEC
    integer, parameter :: NWAVEC = 5

    ! Number Monte Carlo steps in termalization
    integer, parameter :: MCPRE = 1000

    ! Number Monte Carlo steps after termalization (i.e. calculations)
    integer, parameter :: MCMAX = 10000000

    ! Wave function coefficients: ALPHA0 <= alpha <= ALPHA1
    real(kind=dp), parameter :: ALPHA0 = 0.8_dp
    real(kind=dp), parameter :: ALPHA1 = 1.2_dp

    ! Wave function coefficients: WAVEC0 <= c <= WAVEC1
    real(kind=dp), parameter :: WAVEC0 = -0.2_dp
    real(kind=dp), parameter :: WAVEC1 = +0.2_dp

    real(kind=dp) :: DUMMY

    ! The local energy
    real(kind=dp)  :: LOCEN

    ! The expectation value of total energy
    real(kind=dp)  :: ERWEN

    ! The expectation value of kinetic energy
    real(kind=dp)  :: ERWKIN

    ! The expectation value of potential energy
    real(kind=dp)  :: ERWPOT

    ! The variance of total energy
    real(kind=dp)  :: VAREN

    ! The variance of potential energy
    real(kind=dp)  :: VARPOT

    ! The variance of kinetic energy
    real(kind=dp)  :: VARKIN

    ! The parameter of wave function: alpha
    real(kind=dp)  :: ALPHA

    ! The change in the alpha parameter of wave function
    real(kind=dp)  :: DALPHA

    ! The parameter of wave function: c
    real(kind=dp)  :: WAVEC

    ! The change in the c parameter of wave function
    real(kind=dp)  :: DWAVEC

    ! The maximum step width
    real(kind=dp)  :: STEPMAX

    !
    real(kind=dp)  :: RDIF,QUOT
    real(kind=dp)  :: RAD1,RAD2,RADNEU,EK,EP
    logical   :: MCSCHRITT
    ! Local variables
    integer  :: ix,n1,n2,n3
    integer  :: COUNTD,COUNTU,MCOUNT
    real(kind=dp) :: rannumb
    character(len=30) :: AVRHORAD_FILE
    !
    ! Control output
    open(unit=35,FILE="MC21.OUT",STATUS="UNKNOWN")
    open(unit=38,FILE="Hmcvar_splot21.dat",STATUS="UNKNOWN")
    open(unit=39,FILE="Hmcerw_splot21.dat",STATUS="UNKNOWN")

    if (NALPHA == 1) then
        DALPHA = 0.0_dp
    else
        DUMMY = DBLE(NALPHA - 1)
        DALPHA = (ALPHA1 - ALPHA0) / DUMMY
    end if

    if (NWAVEC == 1) then
        DWAVEC = 0.0_dp
    else
        DUMMY = DBLE(NWAVEC - 1)
        DWAVEC = (WAVEC1 - WAVEC0) / DUMMY
    end if


    DRHO = 0.01_dp
    ! Start data:
    lnxfa1:do n1 = 1,NALPHA
        lnxfa2:do n2 = 1,NWAVEC

            COUNTU = 0
            COUNTD = 0


            if (NALPHA == 1) then
                ALPHA = 0.5_dp * (ALPHA0 + ALPHA1)
            else
                ALPHA = ALPHA0 + (n1 - 1) * DALPHA
            end if

            if (NWAVEC == 1) then
                WAVEC = 0.5_dp * (WAVEC0 + WAVEC1)
            else
                WAVEC = WAVEC0 + (n2 - 1) * DWAVEC
            end if

            !
            ! print "(a, i3, a, i3)", 'n1= ', n1, ' n2= ', n2
            print "(a, f6.3, a, f6.3)", 'ALPHA= ', ALPHA, ' WAVEC= ', WAVEC
            !
            call random_seed()
            ! Initial electron position
            RE(1)=0.1_dp
            RE(2)=0.1_dp
            RE(3)=0.1_dp
            RNEU = RE
            !Maximum step width, KONTUZ: check with acceptance ratio!
            STEPMAX = 2.0_dp/(1.0_dp+ALPHA)
            !Counts the acceptance number
            MCOUNT = 0
            !Observables
            LOCEN = 0.0_dp
            ERWEN = 0.0_dp
            VAREN = 0.0_dp
            ERWKIN = 0.0_dp
            VARKIN = 0.0_dp
            ERWPOT = 0.0_dp
            VARPOT = 0.0_dp
            AVRHORAD = 0.0_dp
            !
            !
            !MC loop: prerun for thermalizing,KONTUZ: does not change the bad
            !sampling of energy!!!
            lrunpre:do IMC=1,MCPRE
                do ix=1,3
                    !Shift position at random within +-STEPMAX/2
                    call RANDOM_NUMBER(rannumb)
                    RDIF = (rannumb-0.5)*STEPMAX
                    RNEU(ix) = RE(ix)+RDIF
                end do
                !Calculate wave function ratio psi=(1+c*r)exp(-alpha*r)
                RAD1 = DSQRT(RE(1)**2+RE(2)**2+RE(3)**2)
                RAD2 = DSQRT(RNEU(1)**2+RNEU(2)**2+RNEU(3)**2)
                QUOT=((1.0_dp+WAVEC*RAD2)/(1.0_dp+WAVEC*RAD1))**2*DEXP(-2.0_dp*ALPHA*(RAD2-RAD1))
                !Test on acceptance
                if (QUOT < 1) THEN
                    call RANDOM_NUMBER(rannumb)
                    MCSCHRITT = dble(rannumb) < QUOT
                else
                    MCSCHRITT = .TRUE.
                end if
                if (MCSCHRITT) THEN
                    RE = RNEU
                    MCOUNT = MCOUNT + 1
                else
                    RNEU = RE
                end if
            end do lrunpre
            write(35,*)'STEPMAX = ',STEPMAX
            write(35,*)'prerun: MCPRE=',MCPRE,' acc. ratio = ',100.*DBLE(MCOUNT)/DBLE(MCPRE),' % '
            MCOUNT = 0
            COUNTU = 0
            COUNTD = 0
            !
            !
            !
            ! MC loop: main run after thermalizing
            lrun:do IMC=1,MCMAX
                do ix=1,3
                    !Shift position at random within +-STEPMAX/2
                    call RANDOM_NUMBER(rannumb)
                    RDIF = (rannumb-0.5_dp)*STEPMAX
                    RNEU(ix) = RE(ix)+RDIF
                end do
                !Calculate wave function ratio psi=(1+c*r)exp(-alpha*r)
                RAD1 = DSQRT(RE(1)**2+RE(2)**2+RE(3)**2)
                RAD2 = DSQRT(RNEU(1)**2+RNEU(2)**2+RNEU(3)**2)
                QUOT=((1.0_dp+WAVEC*RAD2)/(1.0_dp+WAVEC*RAD1))**2*DEXP(-2.0_dp*ALPHA*(RAD2-RAD1))
                !Test on acceptance
                if (QUOT < 1) THEN
                    call RANDOM_NUMBER(rannumb)
                    MCSCHRITT = dble(rannumb) < QUOT
                    if (MCSCHRITT) COUNTU = COUNTU + 1
                else
                    MCSCHRITT = .TRUE.
                    COUNTD = COUNTD + 1
                end if
                if (MCSCHRITT) THEN
                    RE = RNEU
                    MCOUNT = MCOUNT + 1
                else
                    RNEU = RE
                end if
                RADNEU = DSQRT(RE(1)**2 + RE(2)**2 + RE(3)**2)
                !Update of observables
                if (RADNEU .LT. EMACH) THEN
                    LOCEN = -0.5_dp*ALPHA**2 + WAVEC**2 + ALPHA*WAVEC + 3.0_dp*(ALPHA-WAVEC)/2.0_dp/EMACH
                    EK = 0.0_dp
                    EP = 0.0_dp
                else if (DABS(RADNEU*WAVEC+1) .LT. EMACH) THEN
                    EK = -0.5_dp*ALPHA**2
                    EK = EK + ALPHA - WAVEC*(1.0_dp+2.0_dp*(ALPHA+WAVEC**2))
                    EP = -1.0_dp/RADNEU
                    LOCEN = EK + EP
                else
                    EK = -0.5_dp*ALPHA**2
                    EK = EK + ALPHA/RADNEU-WAVEC*(1.0_dp-ALPHA*RADNEU)/(1.0_dp+WAVEC*RADNEU)/RADNEU
                    EP = -1.0_dp/RADNEU
                    LOCEN = EK + EP
                end if
                !print *, LOCEN
                ! ERWKIN and ERWPOT miss the correction close to the nucleus
                ERWKIN = dble(IMC-1)/dble(IMC)*ERWKIN +EK/dble(IMC)
                ERWPOT = dble(IMC-1)/dble(IMC)*ERWPOT +EP/dble(IMC)
                call DENSITY1D
                AVRHORAD(1:NRHO)=AVRHORAD(1:NRHO)*dble(IMC-1)/dble(IMC)+RHORAD(1:NRHO)/dble(IMC)
                ERWEN = dble(IMC-1)/dble(IMC)*ERWEN+LOCEN/dble(IMC)
                if (IMC == 1) THEN
                    VAREN = 0.0_dp
                else
                    VAREN = dble(IMC-1)/dble(IMC)*VAREN + 1/dble(IMC-1)*(ERWEN-LOCEN)**2
                end if
            end do lrun
            write(35,35)'main run: MCMAX= ',MCMAX,' acc. ratio = ',100.*dble(MCOUNT)/dble(MCMAX),' % '
            write(35,*)'downhill steps, towards higher probability,COUNTS in %= ’',100.D0*COUNTD/dble(MCMAX),' % '
            write(35,*)'uphill steps, towards lower probability,COUNTS in %= ',100.D0*COUNTU/dble(MCMAX),' % '
            write(35,*)'ALPHA = ',ALPHA,' WAVEC = ',WAVEC
            write(35,*)'energy+0.5*ALPHA**2 = ',ERWEN+0.5*ALPHA**2
            write(35,*)'ERWKIN = ',ERWKIN,'ERWPOT = ',ERWPOT
            write(35,*)'ERWEN = ',ERWEN,' VAREN = ',VAREN
            write(35,*)
            write(35,*)

            write(38,25) ALPHA,WAVEC,VAREN
            write(39,25) ALPHA,WAVEC,ERWEN

!            write(AVRHORAD_FILE,'("AVRHORAD_",i0,"_",i0,".dat")') n1, n2
!            open(unit=47,FILE=AVRHORAD_FILE,STATUS="UNKNOWN")
!            do n3=1,NRHO
!                write(47,*) n3,AVRHORAD(n3)
!            end do
!            close(47)
        end do lnxfa2
    end do lnxfa1

    close(35)
    close(38)
    close(39)
    25 format(1x,2f7.3,e16.8)
    35 format(1x,a,i11,a,f7.3,a)
end
!
!------------------------


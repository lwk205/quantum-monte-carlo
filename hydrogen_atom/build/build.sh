#!/bin/bash

NAME=hydrogen

rm -rf ${NAME}.x
gfortran -std=f95 -o ${NAME}.x -Wall -pedantic -O2 ${NAME}.F95 


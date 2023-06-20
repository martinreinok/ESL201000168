cmake_minimum_required(VERSION 3.12)
project(20Sim-RPi)

# Add your source files
set(SOURCES
	main.c
	Paninteg.c
	Panmodel.c
	Pansubmod.c
	Tiltinteg.c
	Tiltmodel.c
	Tiltsubmod.c
	xxfuncs.c
	xxinverse.c
	xxmatrix.c)

# Add the executable
add_executable(20sim-pi ${SOURCES})

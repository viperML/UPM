# FORTRAN compiler given below
FC = gfortran

# LINKER GIVEN BELOW
LD = gfortran

# COMPILER FLAGS GIVEN BELOW
FFLAGS  = -fbounds-check

# COMMAND TO DELETE (Windows=del, MacOS=rm)
RM = rm

SRC  = funciones.f95 q2.f95 

OBJ  = $(SRC:.f95=.o)
EXE  = q2MAKE.o

.SUFFIXES: .f95 .o

all: $(OBJ) main

%.o : %.f95
	$(FC) $(FFLAGS) -c $<

main : $(OBJ)
	$(LD) $(FFLAGS) $(OBJ) -o $(EXE)

clean:
	$(RM) -f $(OBJ) *.mod

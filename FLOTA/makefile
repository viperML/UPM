# CAMBIAR RM PARA LINUX/MACOS, DEL PARA WINDOWS
RM = rm


# NO MODIFICAR
SRC  = board_generator.f95 lector.f95 ascii.f95 alrededor.f95 comprobacion.f95 main.f95
FC = gfortran
LD = gfortran
FFLAGS  = -fbounds-check 
OBJ  = $(SRC:.f95=.o)
EXE  = juego.o
.SUFFIXES: .f95 .o
all: $(OBJ) main
%.o : %.f95
	$(FC) $(FFLAGS) -c $<
main : $(OBJ)
	$(LD) $(FFLAGS) $(OBJ) -o $(EXE)
clean:
	$(RM) -f $(OBJ) *.mod *.o

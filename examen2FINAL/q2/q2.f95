program q5
use funciones
implicit none
real*8 :: a, b, incremento, suma
real*8, allocatable :: X(:), F(:)
real*8, parameter :: pi = acos(-1.d0)
integer :: N, i

write(*,*) "Introduzca el valor de N:"
read(*,*) N

allocate(X(0:N))
allocate(F(0:N))

a = -7.d0
b = 7.d0

! Aqui practicamente se cogen todas las formulas del ejercicio y se traducen en fotran, no hay mucho que explicar


incremento = (b-a)/(N*1.d0)

do i = 0, N
  X(i) = a + i*incremento
end do

! write(*,*) "X=:", X

suma = 0.d0

do i=0, N-1
  F(i) = imagen( X(i) )

  ! Aprovecho este bucle para sumarlo ya que estamos, en vez de hacer otro separado
  suma = suma + F(i)*incremento
end do


write(*,*) "La suma es:",suma

end program q5

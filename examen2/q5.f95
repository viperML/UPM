program q5
implicit none
real*8 :: a, b, incremento, suma
real*8, allocatable :: X(:), F(:)
real*8, parameter :: pi = 4*atan(1.d0)
integer :: N, i

write(*,*) "Introduzca el valor de N:"
read(*,*) N

allocate(X(N+1))
allocate(F(N+1))

write(*,*) "Introduzca los valores de a y b:"
read(*,*) a
read(*,*) b

incremento = (b-a)/(N*1.d0)
do i = 0, N
  X(i+1) = a + i*incremento
end do
write(*,*) "X:", X ! DEBUG
write(*,*) "Ax:", incremento ! DEBUG

do i=0, N
  if(X(i+1) <= -pi/2.d0) then
    F(i+1) = 1.d0
  else if (X(i+1) < pi/2.d0) then
    F(i+1) = cos(pi*X(i+1))
  else
    F(i+1) = 0.d0
  end if

  write(*,*)  F(i+1), i
  suma = suma + F(i+1)
end do

write(*,*) suma

end program q5

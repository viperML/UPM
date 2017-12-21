program Q1
use auxiliar
implicit none
real*8, parameter :: pi = acos(-1.d0)

write(*,*) "sin(pi/4), M=8", f1(pi/4.d0, 8)
write(*,*) "sin(pi/4), M=INF", f1(pi/4.d0, 100)

write(*,*) "1/(1-0.9), M=20", f2(0.9d0,20)
write(*,*) "1/(1-0.9), M=INF", f2(0.9d0, 10000)

contains
  function f1(input, M)
    implicit none
    integer :: i, j
    integer, intent(in) :: M
    real*8, intent(in) :: input
    real*8 :: f1, f1_anterior
    f1 = 0.d0
    do i = 0, M
      f1_anterior = f1
      f1 = f1 + ( ((-1)**i)*(input**(2*i+1))) / factorial(2*i+1)
      if(f1_anterior == f1) then
        write(*,*) "Limite alcanzado en M=", i
        exit
      end if
    end do
  end function f1

  function f2(input, M)
    implicit none
    integer :: i
    integer, intent(in) :: M
    real*8, intent(in) :: input
    real*8 :: f2, f2_anterior
    f2 = 0.d0
    if(input < 1.d0) then
    do i = 0, M
      f2_anterior = f2
      f2 = f2 + input**i
      if(f2_anterior == f2) then
        write(*,*) "Límite alcanzado en M=", i
        exit
      end if
    end do
    end if
  end function f2

end program Q1

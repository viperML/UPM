program q6
implicit none
real*8, parameter :: pi = 4*atan(1.d0)

write(*,*) "e¹, M=5", f1(1.d0, 5)
write(*,*) "e¹, M=INF", f1(1.d0, 100)

write(*,*) "sin(pi/2), M=8", f2(pi/2.d0, 8)
write(*,*) "sin(pi/2), M=INF", f2(pi/2.d0, 100)

write(*,*) "cosh(1), M=10", f3(1.d0,10)
write(*,*) "cosh(1), M=INF", f3(1.d0,100)

write(*,*) "1/(1-0.9), M=20", f4(0.9d0,20)
write(*,*) "1/(1-0.9), M=INF", f4(0.9d0, 100)

contains
  function f1(input, M)
    implicit none
    integer :: i, j
    integer, intent(in) :: M
    real*8, intent(in) :: input
    real*8 :: f1, f1_anterior, factorial
    f1 = 0.d0
    do i = 0, M
      f1_anterior = f1
      factorial = 1.d0
      do j = 0, (i)-1
        factorial = factorial*((i)-j)
      end do
      f1 = f1 + (input**i) / factorial
      if(f1_anterior == f1) then
        write(*,*) "Limite alcanzado en M=", i
        exit
      end if
    end do
  end function f1

  function f2(input, M)
    implicit none
    integer :: i, j
    integer, intent(in) :: M
    real*8, intent(in) :: input
    real*8 :: f2, f2_anterior, factorial
    f2 = 0.d0
    do i = 0, M
      f2_anterior = f2
      factorial = 1.d0
      do j=0, (2*i+1)-1
        factorial = factorial*( (2*i+1)-j)
      end do
      f2 = f2 + ( ((-1)**i)*(input**(2*i+1))) / factorial
      if(f2_anterior == f2) then
        write(*,*) "Limite alcanzado en M=", i
        exit
      end if
    end do
  end function f2

  function f3(input, M)
    implicit none
    integer :: i, j
    integer, intent(in) :: M
    real*8, intent(in) :: input
    real*8 :: f3, f3_anterior, factorial
    f3 = 0.d0
    do i = 0, M
      f3_anterior = f3
      factorial = 1.d0
      do j = 0, (2*i)-1
        factorial = factorial*((2*i)-j)
      end do
      f3 = f3 + (input**(2*i)) / factorial
      if(f3_anterior == f3) then
        write(*,*) "Limite alcanzado en M=", i
        exit
      end if
    end do
  end function f3

  function f4(input, M)
    implicit none
    integer :: i
    integer, intent(in) :: M
    real*8, intent(in) :: input
    real*8 :: f4, f4_anterior
    f4 = 0.d0
    if(input < 1.d0) then
    do i = 0, M
      f4_anterior = f4
      f4 = f4 + input**i
      if(f4_anterior == f4) then
        write(*,*) "Límite alcanzado en M=", i
        exit
      end if
    end do
    end if
  end function f4
end program q6

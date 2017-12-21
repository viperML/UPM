module auxiliar
contains
  function factorial(input)
    implicit none
    integer, intent(in) :: input
    real*8 :: factorial
    integer :: j
    factorial = 1.d0
    do j = 0, input-1
      factorial = factorial*(input-j)
    end do
  end function factorial
end module auxiliar

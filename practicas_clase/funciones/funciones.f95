module funciones
contains
  function f1(x)
    real :: x
    real :: f1

    f1 = exp(x*2)
  end function

  function f2(x)
    real :: x
    real :: f2

    f2 = cos(x) + sin(x)
  end function

  function f3(x)
    real :: x
    real :: f3

    f3 = x*x + 1
  end function
end module

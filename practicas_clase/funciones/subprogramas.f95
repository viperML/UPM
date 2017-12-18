module subprogramas
contains
subroutine valor_maximo_intervalo (xO, x1, func, valor_max)

    real, intent(inout)       :: xO, x1
    real, intent(inout)    :: valor_max

    interface
        function func(x)
            real  :: x
            real  :: func
        end function
    end interface

    do while ( x0 <= x1)
      valor_max = max( func(x0), valor_max)

      x0 = x0 + 0.00001
    end do


end subroutine
end module

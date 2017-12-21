module funciones
contains
  function imagen(input)
    implicit none
    real*8 :: imagen
    real*8, intent(in) :: input
    real*8, parameter :: pi = acos(-1.d0)

    if( input <= -pi) then
      imagen = -(input+pi)/(input**2+1.d0)
    else if (input < pi) then
      imagen = input * sin(input)
    else
      imagen = (input-pi)/(input**2+1.d0)
    end if
  end function imagen
end module funciones

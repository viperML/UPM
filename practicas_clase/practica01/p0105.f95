program intercambiar_xy
    implicit none
    integer :: x
    integer :: y
    integer :: xBUFFER      ! variables buffer temporales para almacenar los datos
    integer :: yBUFFER      ! (se podria hacer con solo x y t pero me resulta mas comodo asi)

    write(*,*) 'Introduce x e y:'
    read(*,*) x, y

    xBUFFER=y
    yBUFFER=x

    x=xBUFFER
    y=yBUFFER

    write(*,*) 'El valor de x ahora es:', x,',y el de y es', y
end program intercambiar_xy
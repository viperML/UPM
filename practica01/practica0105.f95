program intercambiar_xy
    implicit none
    integer :: x
    integer :: y
    integer :: xBUFFER
    integer :: yBUFFER

    write(*,*) 'Introduce x:'
    read(*,*) x 

    write(*,*) 'Introduce y:'
    read(*,*) y

    xBUFFER=y
    yBUFFER=x

    x=xBUFFER
    y=yBUFFER


    write(*,*) 'x vale:', x,', y vale :', y
end program intercambiar_xy
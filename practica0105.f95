program intercambiar_xy
    implicit none
    integer :: x
    integer :: y
    integer :: x1
    integer :: y1

    write(*,*) 'Introduce x:'
    read(*,*) x 

    write(*,*) 'Introduce y:'
    read(*,*) y

    x1=y
    y1=x

    write(*,*) 'x vale:', x1,', y vale :', y1

end program intercambiar_xy
program angulo_a_sexagesimal
    implicit none
    real :: grados
    real :: minutos
    real :: segundos
    real, parameter :: pi = acos(-1.)

    write(*,*) 'Introduce grados º'
    read(*,*) grados
    write(*,*) 'Introduce minutos'
    read(*,*) minutos
    write(*,*) 'Introduce segundos'
    read(*,*) segundos

    write(*,*) (grados + minutos/60. + segundos/360.)*pi/180.
    write(*,*) 'grados sexagesimales'
end program angulo_a_sexagesimal
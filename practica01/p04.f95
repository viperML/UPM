program angulo_a_sexagesimal
    implicit none
    real :: grados, minutos, segundos, sexagesimales
    real, parameter :: pi = acos(-1.)

    write(*,*) 'Introduce gradosº, minutos y segundos:'
    read(*,*) grados, minutos, segundos

    sexagesimales = (grados + minutos/60. + segundos/360.)*pi/180.
    write(*,*) sexagesimales, 'grados sexagesimales'
end program angulo_a_sexagesimal
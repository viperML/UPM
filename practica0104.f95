program angulo_a_sexagesimal
    implicit none
    real :: grados = 120
    real :: minutos = 13
    real :: segundos = 10
    real, parameter :: pi = acos(-1.)
    write(*,*) (grados + minutos/60. + segundos/360.)*pi/180.
end program angulo_a_sexagesimal
program area_vol_esfera
    implicit none
    real :: radio
    real, parameter :: pi = acos(-1.)

    write(*,*) 'Introduce el radio de la esfera:'
    read(*,*) radio
    
    write(*,*) 'El área de una esfera de radio ', radio, ' es ', 4.*pi*radio**2, ', y el volumen es ', 4./3.*pi*radio**3
end program area_vol_esfera
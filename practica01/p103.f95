program area_vol_esfera
    implicit none
    real :: radio, area, volumen
    real, parameter :: pi = acos(-1.)

    write(*,*) 'Introduce el radio de la esfera:'
    read(*,*) radio

    area = 4. * pi * radio**2
    volumen = 4./3. * pi* radio**3
    
    write(*,*) 'El área de una esfera de radio', radio, 'es' , area , 'y el volumen es' , volumen
end program area_vol_esfera
program farenheit_a_kelvin
    implicit none
    real :: Temp

    write(*,*) 'Introduce to temperatura en grados Farenheit:'
    read(*,*) Temp
    
    write(*,*) 5./9.*(Temp - 32.) + 273.15, 'K'
end program farenheit_a_kelvin
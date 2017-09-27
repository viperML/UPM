program farenheit_a_kelvin
    implicit none
    real :: temp_F, temp_K

    write(*,*) 'Introduce to temperatura en grados Farenheit:'
    read(*,*) temp_F

    temp_K = 5./9.*(temp_F - 32.) + 273.15
    
    write(*,*) temp_K , 'K'
end program farenheit_a_kelvin
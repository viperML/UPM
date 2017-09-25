program funcion_valores
implicit none

real :: x, y, resultado

CALL execute_command_line('cat practica0204.dat')
write(*,*) 'Introduce los valores de x e y:'
read(*,*) x,y

if (x < y) then

    if (x < -2.) then
        resultado = 0.
    else if (x < 2.) then                   !! No se tiene en cuenta el intervalo anterior porque aunque en notacion matematica tiene sentido, la ejecución es secuencial
        resultado = (x**2 +y**2)**1./2.     !! y los valores que pasen a la siguiente condición ya cumpliran la anterior de una manera u otra.
    else if (x <= 4.) then                  !! De esta forma evito usar .AND. para ahorrar espacio, ya que no hace ninguna funcion
        resultado = x / (y*2.)              !! Aun asi, en practica0204.dat estan especificados los intervalos completos
    else
        resultado = 7*x**(4./3.)
    end if

else if(x > y .and. y > -7.) then

    if (x < -2.) then
        resultado = y - x
    else if (x < 2. .AND. y /= 0.) then
        resultado = x / y
    else if (x < 2. .AND. y == 0.) then
        resultado = 0.
    end if

else

    resultado = 7*x**3. + 2*x**2. - x + 5

end if

write(*,*) 'f(x,y) =', resultado


end program funcion_valores
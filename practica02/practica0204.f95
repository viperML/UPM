program funcion_valores
implicit none

real :: x, y, resultado

CALL execute_command_line('./practica0204.sh')
write(*,*) 'Introduce los valores de x e y:'
read(*,*) x,y

if (x < y) then

    if (x < -2.) then
        resultado = 0.
    else if (-2. <= x .and. x < 2.) then
        resultado = (x**2 +y**2)**1./2.
    else if (2. <= x .and. x <= 4.) then
        resultado = x / (y*2.)
    else
        resultado = 7*x**(4./3.)
    end if

else if(x > y .and. y > -7.) then

    if (x < -2.) then
        resultado = y - x
    else if ( -2. <= x .AND. x < 2. .AND. y /= 0.) then
        resultado = x / y
    else if ( -2. <= x .AND. x < 2. .AND. y == 0.) then
        resultado = 0.
    end if

else

    write(*,*) 'else'
    resultado = 7*x**3. + 2*x**2. - x + 5

end if

write(*,*) 'f(x,y) =', resultado
end program funcion_valores
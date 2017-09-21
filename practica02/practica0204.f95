program funcion
implicit none

real :: x, y
real :: resultado

write(*,*) 'Introduce valores de x y'
read(*,*) x, y

if (x<y) then

    if (x<-2.) then
        resultado = 0.
    else if (x<2. .and x>=-2.) then
        resultado = ((x**2.) + (y**2.) )**(1./2.)
    else if (x<=4. .and. x>=2.) then
        resultado = x/(2.*y)
    else
        resultado = 7.*(x)**(4./3.)
    end if

else if (x > y .and. y > -7)
    write(*,*) 'relleno'
else
     write(*,*) 'relleno'
end if


end program funcion
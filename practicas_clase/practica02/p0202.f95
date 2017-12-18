program raiz_ecuacion_grado_1
implicit none
real :: a
real :: b

write(*,*) 'ax + b = 0'
write(*,*) 'Introduce a y b'
read(*,*) a , b

if ( a /= 0.) then
    write(*,*) 'x =', -b/a
else
    write(*,*) 'a no puede ser 0'
end if

end program raiz_ecuacion_grado_1
program suma_nums
implicit none

integer :: num, i, suma = 0                 !! suma = 0 por si acaso
write(*,*) 'Introducir un numero > 0'
read(*,*) num

if (num<0) error stop "El numero tiene que ser positivo"

do i = 1, num
    suma = suma + i
end do

write(*,*) '1 + 2 + ... + num =', suma

end program suma_nums
program vectores
implicit none

integer, allocatable :: U(:)
integer :: K, i, S = 0
write(*,*) 'Introduzca el valor de K:'
read(*,*) K
write(*,*) 'El tamaño del vector es', 1000 + K
allocate(U(1000+K))

U(1) = 0
do i=2, 1000+K
    if ( U(i-1)-i > 0 ) then
        U(i) = U(i-1) - i
    else
        U(i) = U(i-1) + i
    end if 
end do

do i = 1, 1000+K
    S = S + U(i)
end do

write(*,*) 'S=', S, 'U(1000-K)=', U(1000-K), 'U(1000-2K)=', U(1000-2*K), 'U(1000-3K)=', U(1000-3*K)
deallocate(U)
end program vectores
program q4
implicit none
real*8 :: output ! Aquí se almacena el valor de cada apartado y después se resetea
integer :: i

write(*,*) "1 ----------------"
output = 0.d0
do i = 1, 10 ! Sumatorio de las trazas de A(M=1), A(M=2), ... A(M=10)
  output = output + traza(A(i))
end do
write(*,*) output


write(*,*) "2 ----------------"
output = 0.d0
do i = 1, 5 ! Sumatorio de las trazas de A(M=1)*A(M=1), A(M=2)*A(M=2) ... hasta 5
  output = output + traza( A_elevada(A(i),2) )
end do
write(*,*) output

write(*,*) "3 ----------------"
output = 0.d0
do i = 1, 5 ! Sumatorio con M=4 de las trazas de A, A*A, A*A*A, A*A*A*A, A*A*A*A*A
  output = output + traza( A_elevada(A(4), i) )
end do
write(*,*) output

contains 
  function A(M) ! Esta funcion devuelve una matriz MxM, según el valor de M
    implicit none
    integer,intent(in) :: M
    real*8, dimension(0:M-1, 0:M-1) :: A ! Está definida desde =, para el que la posicion 0,0 tenga sentido
    integer :: i, j
    do i = 0, M-1
      do j =0, M-1
        A(i,j) = (i/(M*1.d0))**j  ! Multiplico el denominador por 1.d0 para que fortran no la líe con los integers en divisiones
      end do
    end do
  end function A

  function traza(matriz) ! Metes una matriz, te saca la traza. Just works
    implicit none
    real*8 :: traza
    real*8 :: matriz(:,:)
    integer :: i
    traza = 0.d0
    do i = 1, size(matriz(1,:)) ! Sumatorio de las posiciones 1,1 2,2 ... n,n de cualquier matriz.
                                ! Como no tiene que ver con la matriz en su definicion puedo usar la posicion 1,1 (que se definió
                                ! como 0,0
      traza = traza + matriz(i,i)
     end do
  end function traza

  function A_elevada(A,exponente) ! Metes una matriz, te hace una multiplicacion matricial con el exponente que quieras
    implicit none
    real*8, intent(in) :: A(:,:)
    real*8, allocatable :: A_elevada(:,:)
    integer, intent(in) :: exponente
    integer :: i
    allocate(A_elevada(size(A(1,:)),size(A(1,:))))
    A_elevada = A
    do i=2, exponente ! Si el exponente es 2, hace el bucle una vez, si es 3 dos veces. 
      A_elevada = matmul(A_elevada, A) ! Se va metiendo la propia matriz recursivamente
    end do
  end function A_elevada
end program q4

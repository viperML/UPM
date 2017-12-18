module media_subrutina

contains
function media(V)
    implicit none
    real, intent(in) :: V(:)
    real :: media
    media = sum(V)/size(V)
end function media

end module

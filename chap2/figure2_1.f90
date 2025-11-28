program figure2_1
  ! To illustrate some of the basic features of a Fortran program.
  implicit none
  integer :: i, j, k

  write(*,*) 'Enter the numbers to multiply: '
  read(*,*) i, j

  k = i * j

  write(*,*) "Result: ", k
end program figure2_1

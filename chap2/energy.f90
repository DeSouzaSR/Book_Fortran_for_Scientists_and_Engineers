program energy
  ! Calculate total mechanical energy e = p + k
  ! p = mgh Potential energy
  ! k = (1/2)*v**2 Kinetics energy
  implicit none
  real :: p ! Potential energy
  real :: k ! Kinetics energy
  real :: e ! Total mechanical energy
  real :: m ! Mass [kg]
  real :: h ! Heigth [m]
  real :: v ! Velocity [m/s**2]
  write(*,*) "Enter potencial "

  e = p + k
end program energy

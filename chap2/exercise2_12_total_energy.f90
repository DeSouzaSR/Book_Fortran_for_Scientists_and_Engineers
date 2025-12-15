program total_energy
  ! Write a Fortran statement for the total energy (potential plus kinetic)
  ! possessed by an object in the Earth’s gravitational field.
  ! ke = 1/2*m*v**2: kinetic energy
  ! pe = m*g*h : potential energy
  ! et = ke + pe : total energy
  implicit none
  real, parameter :: g = 9.8 ! m/s**2
  real            :: m, h, v ! mass, height, velocity
  real            :: ke, pe, te

  write(*,*) "Enter m (kg), h (m), v(m/s)"
  read(*,*) m, h, v

  ke = 0.5 * m * v**2
  pe = m * g * h
  te = ke + pe

  write(*,*)"Total Energy: ", te
end program total_energy

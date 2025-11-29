program power
  ! Calculating Real, Reactive, and Apparent Power
  ! Given the rms voltage of the power source and the magnitude and angle of
  ! the impedance Z, write a program that calculates the rms current I, the
  ! real power P, reactive power Q, apparent power S, and power factor PF of
  ! the load.
  implicit none
  real, parameter :: deg_2_rad = 0.01745329 ! Deg to rad factor
  real :: amps ! Current (A)
  real :: p ! Real power (W)
  real :: pf ! Power factor (no units)
  real :: q ! Reactive power (VAR)
  real :: s ! Apparent power (VA)
  real :: theta ! impedance angle (deg)
  real :: volts ! Rms voltage of the power source (V)
  real :: z ! magnitude of load impedance (ohms)

  write(*,*) "Enter the rms voltage: "
  read(*,*) volts

  write(*,*) "Enter the magnitude (ohms) and angle (deg) of impedance"
  read(*,*) z, theta

  ! Perform calculations
  amps = volts / z
  p = volts * amps * cos(theta * deg_2_rad)
  q = volts * amps * sin(theta * deg_2_rad)
  s = volts * amps
  pf = cos(theta * deg_2_rad)

  ! Write out the results.
  write (*,*) 'Voltage = ', volts, ' volts'
  write (*,*) 'Impedance = ', z, ' ohms at ', theta,' degrees'
  write (*,*) 'Current = ', amps, ' amps'
  write (*,*) 'Real Power = ', p, ' watts'
  write (*,*) 'Reactive Power = ', q, ' VAR'
  write (*,*) 'Apparent Power = ', s, ' VA'
  write (*,*) 'Power Factor = ', pf
end program power

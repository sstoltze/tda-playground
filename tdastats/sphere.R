# Standard parametrisation of the sphere
u = runif(1000, 0, 1)
v = runif(1000, 0, 1)
theta = 2 * pi * u
phi = acos(2 * v - 1)
x = sin(theta) * cos(phi)
y = sin(theta) * sin(phi)
z = cos(theta)
sphere = cbind(x,y,z)

library(TDAstats)
sphere.hom = calculate_homology(sphere, dim=2)

# Persistent homology
plot_persist(sphere.hom)

# Barcode homology
plot_barcode(sphere.hom)

# Plot the sphere
library("lattice")
cloud(z ~ x + y)

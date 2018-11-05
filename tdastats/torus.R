library(TDAstats)
library(lattice)
u = runif(200,0,2*pi)
v = runif(200,0,2*pi)
r = 1
c = 5
x = (c+r*cos(v))*cos(u)
y = (c+r*cos(v))*sin(u)
z = r*sin(v)
torus = cbind(x,y,z)

cloud(z ~ x + y)

torus.hom = calculate_homology(torus, dim=2)

# Persistent homology
plot_persist(torus.hom)

# Barcode homology
plot_barcode(torus.hom)

angles1 <- runif(100, 0, 2 * pi)
angles2 <- runif(100, 0, 2 * pi)
torus_circ <- cbind(cos(angles1), sin(angles1), cos(angles2), sin(angles2))

torus_circ.hom = calculate_homology(torus_circ, dim=2)

# Persistent homology
plot_persist(torus_circ.hom)

# Barcode homology
plot_barcode(torus_circ.hom)

angles <- runif(100, 0, 2 * pi)
torus_circ_curve <- cbind(cos(angles), sin(angles), cos(angles), sin(angles))

torus_circ_curve.hom = calculate_homology(torus_circ_curve, dim=2)

# Persistent homology
plot_persist(torus_circ_curve.hom)

# Barcode homology
plot_barcode(torus_circ_curve.hom)

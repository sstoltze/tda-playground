library(TDAstats)

# point cloud: uniform random points in unit square (2-dimensional)
square <- cbind(runif(100), runif(100))

# point cloud: points distributed uniformly around circle (2-dimensional)
angles <- runif(100, 0, 2 * pi)
circ <- cbind(cos(angles), sin(angles))

# calculate persistent homology for both datasets
square.hom <- calculate_homology(square, dim = 1)
circ.hom <- calculate_homology(circ, dim = 1)

# visualize first dataset as a persistence diagram
plot_persist(square.hom)

# visualize first dataset as a barcode diagram
plot_barcode(square.hom)

# visualize second dataset as a persistence diagram
plot_persist(circ.hom)

# visualize second dataset as a barcode diagram
plot_barcode(circ.hom)

library("lattice")
xyplot(circ[,2] ~ circ[,1])

xyplot(square[,2] ~ square[,1])

library("TDAstats")

# point cloud: uniform random points in unit square (2-dimensional)
data1 <- cbind(runif(100), runif(100))

# point cloud: points distributed uniformly around circle (2-dimensional)
angles <- runif(100, 0, 2 * pi)
circ <- cbind(cos(angles), sin(angles))

# calculate persistent homology for both datasets
data1.hom <- calculate_homology(data1, dim = 1)
circ.hom <- calculate_homology(circ, dim = 1)

# visualize first dataset as persistence diagram
plot_persist(data1.hom)

# visualize second dataset as topological barcode
plot_barcode(circ.hom)

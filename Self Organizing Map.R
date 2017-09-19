#self organizing map (SOM)
library(kohonen)
data(wines)
set.seed(7)
plot(wines,type="l")
sommap <- som(scale(wines), grid = somgrid(2,2,"hexagonal"))

#use hierarchical clustering to cluster the codebook vectors
groups <- 3
som.hc <- cutree(hclust(dist(sommap$codes[[1]])), groups)
plot(sommap , type="codes", bgcol = rainbow(groups)[som.hc])

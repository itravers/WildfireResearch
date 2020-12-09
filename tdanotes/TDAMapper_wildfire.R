setwd("C:/Users/isaac/OneDrive/Desktop/Workspace/WildfireConverter/tdanotes")
mydata<-read.csv('WildFires.csv', header = TRUE)
library(TDAmapper)
#Figure8<-data.frame( x=2*cos(0.5*(1:100)), y=sin(1:100) )
plot(mydata[,4],mydata[,3],xlab='Avg Long',ylab='Avg Lat',main='Wild Fires')
#plot(Figure8[,1],Figure8[,2],xlab='x',ylab='y',main='Figure 8')
#read.csv("Path where your CSV file is located on your computer\\File Name.csv")
# The fastcluster package is not necessary. By loading the
# fastcluster package, the fastcluster::hclust() function
# automatically replaces the slower stats::hclust() function
# whenever hclust() is called.
require(fastcluster)
m1 <- mapper1D(
  distance_matrix = dist(mydata),
  filter_values = mydata[,4], #This defines the filter function to be the x value
  num_intervals = 10,
  percent_overlap = 50,
  num_bins_when_clustering = 100)
# The igraph package is necessary to view simplicial complexes
# (undirected graph) resulting from mapper1D().
require(igraph)
g1 <- graph.adjacency(m1$adjacency, mode="undirected")
plot(g1, layout = layout.auto(g1) )


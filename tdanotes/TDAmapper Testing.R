###########################################################################
#Help area for all the installations and librarys we need
install.packages("TDAmapper")
help(fastcluster)
help("mapper1D")

##*************VERY IMPORTANT****************
##Make sure that you replace what is in the "double quotes" on the next line with the file path that you have this
##R-Script saved and all of the .csv files as well.
setwd("C:/Users/isaac/OneDrive/Desktop/Workspace/WildfireConverter/tdanotes")
library(TDAmapper)
require(fastcluster)
library(igraph)

rm(list = ls())


###########################################################################
#First basic figure 8 presentation
#Figure8<-data.frame( x=2*cos(0.5*(1:100)), y=sin(1:100) )
#plot(Figure8[,1],Figure8[,2],xlab='x',ylab='y',main='Figure 8')
#mydata<-Figure8
mydata<-read.csv('WildFires.csv', header = TRUE)

#Mapper for figure 8 filtered by x values
m1 <- mapper1D(distance_matrix = dist(mydata ),
               filter_values = mydata[,4],
               num_intervals = 10,
               percent_overlap = 50,
               num_bins_when_clustering = 10)

g1 <- graph.adjacency(m1$adjacency, mode="undirected")
plot(g1, layout = layout.auto(g1),xlab='x',ylab='y',main='Figure 8 - X Filtered' )

#Mapper for figure 8 filtered by y values
m1b <- mapper1D(distance_matrix = dist(mydata ),
                filter_values = mydata[,3],
                num_intervals = 10,
                percent_overlap = 50,
                num_bins_when_clustering = 10)

g1b <- graph.adjacency(m1b$adjacency, mode="undirected")
plot(g1b, layout = layout.auto(g1b),xlab='x',ylab='y',main='Figure 8 - Y Filtered' )

rm(mydata)

###########################################################################
#Examples based on CSV 1
mydata<-read.csv('WildFires.csv')
plot(mydata[,1],mydata[,2],xlab='x',ylab='y',main='CSV 1')

#Mapper for CSV 1 filtered by x values
m2 <- mapper1D(distance_matrix = dist(mydata ),
               filter_values = mydata[,4],
               num_intervals = 10,
               percent_overlap = 50,
               num_bins_when_clustering = 10)

g2 <- graph.adjacency(m2$adjacency, mode="undirected")
plot(g2, layout = layout.auto(g2) ,xlab='x',ylab='y',main='CSV 1 - X Filtered')

#Mapper for CSV 1 filtered by y values
m2b <- mapper1D(distance_matrix = dist(mydata ),
                filter_values = mydata[,3],
                num_intervals = 10,
                percent_overlap = 50,
                num_bins_when_clustering = 10)

g2b <- graph.adjacency(m2b$adjacency, mode="undirected")
plot(g2b, layout = layout.auto(g2b) ,xlab='x',ylab='y',main='CSV 1 - Y Filtered')

rm(mydata)

###########################################################################
#Examples based on CSV 2
mydata<-read.csv('WildFires.csv')
plot(mydata[,1],mydata[,2],xlab='x',ylab='y',main='CSV 2')

#Mapper for CSV 2 filtered by x values
m3 <- mapper1D(distance_matrix = dist(mydata ),
               filter_values = mydata[,4],
               num_intervals = 10,
               percent_overlap = 50,
               num_bins_when_clustering = 10)

g3 <- graph.adjacency(m3$adjacency, mode="undirected")
plot(g3, layout = layout.auto(g3) ,xlab='x',ylab='y',main='CSV 2 - X Filtered')

#Mapper for CSV 2 filtered by y values
m3b <- mapper1D(distance_matrix = dist(mydata ),
                filter_values = mydata[,3],
                num_intervals = 10,
                percent_overlap = 50,
                num_bins_when_clustering = 10)

g3b <- graph.adjacency(m3b$adjacency, mode="undirected")
plot(g3b, layout = layout.auto(g3b) ,xlab='x',ylab='y',main='CSV 2 - Y Filtered')

rm(mydata)


###########################################################################
#Examples based on CSV 3
mydata<-read.csv('WildFires.csv')
plot(mydata[,1],mydata[,2],xlab='x',ylab='y',main='CSV 3')


#Mapper for CSV 3 filtered by x values
m4 <- mapper1D(distance_matrix = dist(mydata ),
               filter_values = mydata[,4],
               num_intervals = 10,
               percent_overlap = 50,
               num_bins_when_clustering = 10)

g4 <- graph.adjacency(m4$adjacency, mode="undirected")
plot(g4, layout = layout.auto(g4) ,xlab='x',ylab='y',main='CSV 3 - X Filtered')

#Mapper for CSV 3 filtered by y values
m4b <- mapper1D(distance_matrix = dist(mydata ),
                filter_values = mydata[,3],
                num_intervals = 10,
                percent_overlap = 50,
                num_bins_when_clustering = 10)

g4b <- graph.adjacency(m4b$adjacency, mode="undirected")
plot(g4b, layout = layout.auto(g4b) ,xlab='x',ylab='y',main='CSV 3 - Y Filtered')

rm(mydata)

###########################################################################
#Examples based on CSV 4
mydata<-read.csv('points4.csv')
plot(mydata[,1],mydata[,2],xlab='x',ylab='y',main='CSV 4')

#Mapper for CSV 4 filtered by x values
m5 <- mapper1D(distance_matrix = dist(mydata ),
               filter_values = mydata[,4],
               num_intervals = 10,
               percent_overlap = 50,
               num_bins_when_clustering = 10)

g5 <- graph.adjacency(m5$adjacency, mode="undirected")
plot(g5, layout = layout.auto(g5) ,xlab='x',ylab='y',main='CSV 4 - X Filtered')

#Mapper for CSV 4 filtered by y values
m5b <- mapper1D(distance_matrix = dist(mydata ),
                filter_values = mydata[,3],
                num_intervals = 10,
                percent_overlap = 50,
                num_bins_when_clustering = 10)

g5b <- graph.adjacency(m5b$adjacency, mode="undirected")
plot(g5b, layout = layout.auto(g5b) ,xlab='x',ylab='y',main='CSV 4 - Y Filtered')

rm(mydata)

###########################################################################
#Examples based on CSV 5
mydata<-read.csv('points5.csv')
plot(mydata[,1],mydata[,2],xlab='x',ylab='y',main='CSV 5')

#Mapper for CSV 5 filtered by x values
m6 <- mapper1D(distance_matrix = dist(mydata ),
               filter_values = mydata[,4],
               num_intervals = 10,
               percent_overlap = 50,
               num_bins_when_clustering = 10)

g6 <- graph.adjacency(m6$adjacency, mode="undirected")
plot(g6, layout = layout.auto(g6) ,xlab='x',ylab='y',main='CSV 5 - X Filtered')

#Mapper for CSV 5 filtered by y values
m6b <- mapper1D(distance_matrix = dist(mydata ),
                filter_values = mydata[,3],
                num_intervals = 10,
                percent_overlap = 50,
                num_bins_when_clustering = 10)

g6b <- graph.adjacency(m6b$adjacency, mode="undirected")
plot(g6b, layout = layout.auto(g6b) ,xlab='x',ylab='y',main='CSV 5 - Y Filtered')

rm(mydata)

###########################################################################
#Examples based on CSV 6
mydata<-read.csv('points6.csv')
plot(mydata[,1],mydata[,2],xlab='x',ylab='y',main='CSV 6')

#Mapper for CSV 6 filtered by x values
m7 <- mapper1D(distance_matrix = dist(mydata ),
               filter_values = mydata[,4],
               num_intervals = 10,
               percent_overlap = 50,
               num_bins_when_clustering = 10)

g7 <- graph.adjacency(m7$adjacency, mode="undirected")
plot(g7, layout = layout.auto(g7) ,xlab='x',ylab='y',main='CSV 6 - X Filtered')

#Mapper for CSV 6 filtered by y values
m7b <- mapper1D(distance_matrix = dist(mydata ),
                filter_values = mydata[,3],
                num_intervals = 10,
                percent_overlap = 50,
                num_bins_when_clustering = 10)

g7b <- graph.adjacency(m7b$adjacency, mode="undirected")
plot(g7b, layout = layout.auto(g7b) ,xlab='x',ylab='y',main='CSV 6 - Y Filtered')

rm(mydata)

###########################################################################
#Examples based on CSV 11
mydata<-read.csv('points11.csv')
plot(mydata[,1],mydata[,2],xlab='x',ylab='y',main='CSV 11')

#Mapper for CSV 11 filtered by x values
m8 <- mapper1D(distance_matrix = dist(mydata ),
               filter_values = mydata[,4],
               num_intervals = 10,
               percent_overlap = 50,
               num_bins_when_clustering = 10)

g8 <- graph.adjacency(m8$adjacency, mode="undirected")
plot(g8, layout = layout.auto(g8) ,xlab='x',ylab='y',main='CSV 11 - X Filtered')

#Mapper for CSV 11 filtered by y values
m8b <- mapper1D(distance_matrix = dist(mydata ),
                filter_values = mydata[,3],
                num_intervals = 10,
                percent_overlap = 50,
                num_bins_when_clustering = 10)

g8b <- graph.adjacency(m8b$adjacency, mode="undirected")
plot(g8b, layout = layout.auto(g8b) ,xlab='x',ylab='y',main='CSV 11 - Y Filtered')

rm(mydata)

###########################################################################
#Examples based on CSV 12
mydata<-read.csv('points12.csv')
plot(mydata[,1],mydata[,2],xlab='x',ylab='y',main='CSV 12')

#Mapper for CSV 12 filtered by x values
m9 <- mapper1D(distance_matrix = dist(mydata ),
               filter_values = mydata[,4],
               num_intervals = 10,
               percent_overlap = 50,
               num_bins_when_clustering = 10)

g9 <- graph.adjacency(m9$adjacency, mode="undirected")
plot(g9, layout = layout.auto(g9) ,xlab='x',ylab='y',main='CSV 12 - X Filtered')

#Mapper for CSV 12 filtered by y values
m9b <- mapper1D(distance_matrix = dist(mydata ),
                filter_values = mydata[,3],
                num_intervals = 10,
                percent_overlap = 50,
                num_bins_when_clustering = 10)

g9b <- graph.adjacency(m9b$adjacency, mode="undirected")
plot(g9b, layout = layout.auto(g9b) ,xlab='x',ylab='y',main='CSV 12 - Y Filtered')

rm(mydata)

###########################################################################
#Examples based on CSV 13
mydata<-read.csv('points13.csv')
plot(mydata[,1],mydata[,2],xlab='x',ylab='y',main='CSV 13')

#Mapper for CSV 13 filtered by x values
m10 <- mapper1D(distance_matrix = dist(mydata ),
               filter_values = mydata[,4],
               num_intervals = 10,
               percent_overlap = 50,
               num_bins_when_clustering = 10)

g10 <- graph.adjacency(m10$adjacency, mode="undirected")
plot(g10, layout = layout.auto(g10) ,xlab='x',ylab='y',main='CSV 13 - X Filtered')

#Mapper for CSV 13 filtered by y values
m10b <- mapper1D(distance_matrix = dist(mydata ),
                filter_values = mydata[,3],
                num_intervals = 10,
                percent_overlap = 50,
                num_bins_when_clustering = 10)

g10b <- graph.adjacency(m10b$adjacency, mode="undirected")
plot(g10b, layout = layout.auto(g10b) ,xlab='x',ylab='y',main='CSV 13 - Y Filtered')

rm(mydata)

###########################################################################
#Examples based on CSV 14
mydata<-read.csv('points14.csv')
plot(mydata[,1],mydata[,2],xlab='x',ylab='y',main='CSV 14')

#Mapper for CSV 14 filtered by x values
m11 <- mapper1D(distance_matrix = dist(mydata ),
               filter_values = mydata[,4],
               num_intervals = 10,
               percent_overlap = 50,
               num_bins_when_clustering = 10)

g11 <- graph.adjacency(m11$adjacency, mode="undirected")
plot(g11, layout = layout.auto(g11) ,xlab='x',ylab='y',main='CSV 14 - X Filtered')

#Mapper for CSV 14 filtered by y values
m11b <- mapper1D(distance_matrix = dist(mydata ),
                filter_values = mydata[,3],
                num_intervals = 10,
                percent_overlap = 50,
                num_bins_when_clustering = 10)

g11b <- graph.adjacency(m11b$adjacency, mode="undirected")
plot(g11b, layout = layout.auto(g11b) ,xlab='x',ylab='y',main='CSV 14 - Y Filtered')

rm(mydata)

###########################################################################
#Examples based on CSV 4
#In this example we are testing the number of intervals we have for when we connect clusters with edges
#In this example we increased the number of intervals

#Mapper for CSV 4 filtered by x values
m12 <- mapper1D(distance_matrix = dist(mydata ),
               filter_values = mydata[,4],
               num_intervals = 25,
               percent_overlap = 50,
               num_bins_when_clustering = 10)

g12 <- graph.adjacency(m12$adjacency, mode="undirected")
plot(g12, layout = layout.auto(g12) ,xlab='x',ylab='y',main='CSV 4 - X Filtered - Interval Increase')

#Mapper for CSV 4 filtered by y values
m12b <- mapper1D(distance_matrix = dist(mydata ),
                filter_values = mydata[,3],
                num_intervals = 25,
                percent_overlap = 50,
                num_bins_when_clustering = 10)

g12b <- graph.adjacency(m12b$adjacency, mode="undirected")
plot(g12b, layout = layout.auto(g12b) ,xlab='x',ylab='y',main='CSV 4 - Y Filtered - Interval Increase')

###########################################################################
#Examples based on CSV 4
#In this example we are testing the number of intervals we have for when we connect clusters with edges
#In this example we decreased the number of intervals

#Mapper for CSV 4 filtered by x values
m13 <- mapper1D(distance_matrix = dist(mydata ),
                filter_values = mydata[,4],
                num_intervals = 5,
                percent_overlap = 50,
                num_bins_when_clustering = 10)

g13 <- graph.adjacency(m13$adjacency, mode="undirected")
plot(g13, layout = layout.auto(g13) ,xlab='x',ylab='y',main='CSV 4 - X Filtered - Interval Decrease')

#Mapper for CSV 4 filtered by y values
m13b <- mapper1D(distance_matrix = dist(mydata ),
                 filter_values = mydata[,3],
                 num_intervals = 5,
                 percent_overlap = 50,
                 num_bins_when_clustering = 10)

g13b <- graph.adjacency(m13b$adjacency, mode="undirected")
plot(g13b, layout = layout.auto(g13b) ,xlab='x',ylab='y',main='CSV 4 - Y Filtered - Interval Decrease')

###########################################################################
#Examples based on CSV 4
#In this example we are testing the number of overlapping bins and how it affects the map
#In this example we are increasing the number of bins 

#Mapper for CSV 4 filtered by x values
m14 <- mapper1D(distance_matrix = dist(mydata ),
                filter_values = mydata[,4],
                num_intervals = 10,
                percent_overlap = 50,
                num_bins_when_clustering = 25)

g14 <- graph.adjacency(m14$adjacency, mode="undirected")
plot(g14, layout = layout.auto(g14) ,xlab='x',ylab='y',main='CSV 4 - X Filtered - Bins Increase')

#Mapper for CSV 4 filtered by y values
m14b <- mapper1D(distance_matrix = dist(mydata ),
                 filter_values = mydata[,3],
                 num_intervals = 10,
                 percent_overlap = 50,
                 num_bins_when_clustering = 25)

g14b <- graph.adjacency(m14b$adjacency, mode="undirected")
plot(g14b, layout = layout.auto(g14b) ,xlab='x',ylab='y',main='CSV 4 - Y Filtered - Bins Increase')

###########################################################################
#Examples based on CSV 4
#In this example we are testing the number of overlapping bins and how it affects the map
#In this example we are decreasing the number of bins

#Mapper for CSV 4 filtered by x values
m15 <- mapper1D(distance_matrix = dist(mydata ),
                filter_values = mydata[,4],
                num_intervals = 10,
                percent_overlap = 50,
                num_bins_when_clustering = 4)

g15 <- graph.adjacency(m15$adjacency, mode="undirected")
plot(g15, layout = layout.auto(g15) ,xlab='x',ylab='y',main='CSV 4 - X Filtered - Bins Decrease')

#Mapper for CSV 4 filtered by y values
m15b <- mapper1D(distance_matrix = dist(mydata ),
                 filter_values = mydata[,3],
                 num_intervals = 10,
                 percent_overlap = 50,
                 num_bins_when_clustering = 4)

g15b <- graph.adjacency(m15b$adjacency, mode="undirected")
plot(g15b, layout = layout.auto(g15b) ,xlab='x',ylab='y',main='CSV 4 - Y Filtered - Bins Decrease')

###########################################################################
#Examples based on CSV 4
#In this example we are testing how much the bins are overlapped and how it affects the map
#In this example we decrease the overlapping of the bins

#Mapper for CSV 4 filtered by x values
m16 <- mapper1D(distance_matrix = dist(mydata ),
                filter_values = mydata[,4],
                num_intervals = 10,
                percent_overlap = 25,
                num_bins_when_clustering = 10)

g16 <- graph.adjacency(m16$adjacency, mode="undirected")
plot(g16, layout = layout.auto(g16) ,xlab='x',ylab='y',main='CSV 4 - X Filtered - Overlap Decrease')

#Mapper for CSV 4 filtered by y values
m16b <- mapper1D(distance_matrix = dist(mydata ),
                 filter_values = mydata[,3],
                 num_intervals = 10,
                 percent_overlap = 25,
                 num_bins_when_clustering = 10)

g16b <- graph.adjacency(m16b$adjacency, mode="undirected")
plot(g16b, layout = layout.auto(g16b) ,xlab='x',ylab='y',main='CSV 4 - Y Filtered - Overlap Decrease')

###########################################################################
#Examples based on CSV 4
#In this example we are testing how much the bins are overlapped and how it affects the map
#In this example we increase the overlapping of the bins

#Mapper for CSV 4 filtered by x values
m17 <- mapper1D(distance_matrix = dist(mydata ),
                filter_values = mydata[,4],
                num_intervals = 10,
                percent_overlap = 75,
                num_bins_when_clustering = 10)

g17 <- graph.adjacency(m17$adjacency, mode="undirected")
plot(g17, layout = layout.auto(g17) ,xlab='x',ylab='y',main='CSV 4 - X Filtered - Overlap Increase')

#Mapper for CSV 4 filtered by y values
m17b <- mapper1D(distance_matrix = dist(mydata ),
                 filter_values = mydata[,3],
                 num_intervals = 10,
                 percent_overlap = 75,
                 num_bins_when_clustering = 10)

g17b <- graph.adjacency(m17b$adjacency, mode="undirected")
plot(g17b, layout = layout.auto(g17b) ,xlab='x',ylab='y',main='CSV 4 - Y Filtered - Overlap Increase')

rm(mydata)
################################################################
# Calculating the Distance of Positive to the Closest Water Body
# Hasan Sulaeman
################################################################

# Setup ----
setwd("/Users/hasansulaeman/Dropbox/Sam's Sierra Bd work/Data")
data = read.csv("rawdata.csv", header=T)
dist = (data[,58:67])
a = nrow(dist)
b = ncol(dist)

# Calculating Distance and Category of Water Body ----
## Convert the distance in km to m
dist = dist*1000

for(i in 1:a) {
  dist[i,b+1] = min(dist[i,1:b])
  dist[i,b+2] = names(which.min(dist[i,1:b]))
} 

distances = dist[,11:12]
colnames(distances) = c("dist.closest.wb","cat.closest.wb")
ay = cbind(data, distances)



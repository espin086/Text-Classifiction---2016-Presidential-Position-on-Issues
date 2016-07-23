library(caret) #used to train models
library(doMC)
registerDoMC(cores = 4)

set.seed(2015)

#reading in training and test set
setwd("/Users/jjespinoza/Documents/Text Classifiction - 2016 Presidential Position on Issues/1. Data")

df <- read.csv("TDM.csv")

#trying different distance linkage method
clusters <- hclust(dist(df[, 2:length(df)]), method = 'average')
plot(clusters,, labels = df$target)

#cutting off cluster and plotting versus actual
clusterCut <- cutree(clusters, 2)
table(clusterCut, df$target)


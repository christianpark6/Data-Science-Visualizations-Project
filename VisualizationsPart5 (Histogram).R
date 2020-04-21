
source("./Animal_df.r")
#This calls and creates the different data frames for fish, mammals,reptiles,amphibians, and invertebrates.
fish_df<-Animal_df("Fish")
mammal_df<-Animal_df("Mammal")
reptile_df<-Animal_df("Reptile")
amphibian_df<-Animal_df("Amphibian")
invertebrate_df<-Animal_df("Invertebrate")
#This finds the total number of each animal in the data frames.
num_fish<-sum(fish_df$num)
num_mammal<-sum(mammal_df$num)
num_reptile<-sum(reptile_df$num)
num_amphibian<- sum(amphibian_df$num)
num_invertebrate<- sum(invertebrate_df$num)

#This creates the new data frame including all the totals of all 5 categories I chose. Then the code below creates a histogram with the newly made dataframe.
Mammal_Fish_Reptile_Amphibian_Invertebrate<- c(num_mammal,num_fish, num_reptile, num_amphibian, num_invertebrate)
hist(Mammal_Fish_Reptile_Amphibian_Invertebrate,breaks=c(5), col="blue", xlab = "Category")

#This code creates the horizontal bar graph.
p<-ggplot(data=df, aes(x=p_name, y=num)) +
geom_bar(stat="identity", fill="green")+
theme_minimal()
p + coord_flip()


#This creates the Pie Chart where each slice represents the sum of each animal categories population.
slices <- c(743, 3956,1566, 3866, 1343)
lbls <- c("Amphibian", "Fish", "Invertebrate", "Mammal", "Reptile")
pie(slices, labels = lbls, main="Pie Chart of Animal Categories")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) # add percents to labels
lbls <- paste(lbls,"%",sep="") # ad % to labels
pie(slices,labels = lbls, col=rainbow(length(lbls)),
main="Pie Chart of Animal Categories")

df<-Animal_df("Mammal") #This calls the Data frame for Mammals using the GetAnimal function.
#This creates the boxplot with the errorbar.
s_d<- sd(df$num_per_acr, na.rm=TRUE)/sqrt(length(df$num_per_acr[!is.na (df$num_per_acr)]))
plt<- ggplot(df, aes(y = num)) + geom_boxplot() + theme_minimal() + labs(x = "Mammal", y = "Number of Mammals") + geom_boxplot(alpha=0.7) + stat_boxplot(geom="errorbar", width=0.2)
print(plt)



source("./Animal_df.r")
df<-Animal_df("Mammal") #This calls the Mammal Data frame from the function.
#This creates a stack barchart reordering and ranking/organizing based on abundance of mammals in each park.
stack<- ggplot(df, aes(fill= p_name, y= num , x= "Mammals")) +geom_bar(position="stack", stat="identity")
print(stack)

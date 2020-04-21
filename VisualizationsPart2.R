Animal_df <- function(animal_type){ #This is the for loop Function. If you change out the animal type in line 11 it will readjust the Data Frame.
    library(dplyr)
    library(stringr)
    library(BHH2)
    library(ggplot2)
    library(tidyverse)
    library(reshape2)
    library(magrittr)
    
    my_new_data <- my_data %>% select(Park,Animal_Type,Acreage)
    my_animal_data <- my_new_data %>% filter(Animal_Type==animal_type)
    #my_animal_data <- as.factor(my_animal_data$Park)
    my_animal_data$Park <- trimws(my_animal_data$Park)
    ParkNames<-unique(my_animal_data$Park)
    acr<-c()
    p_name<-c()
    num<-c()
    #This is a function that counts the number of animals in each park , the acreage in each park,and also creates a new column that has animals per acre.
    AnimalCount <- count(my_animal_data,Park)
    for(park in ParkNames){
        tmp <- my_animal_data %>% filter(Park==park)
        acr<-append(tmp[1,3],acr)
        num <- append(tmp[1,2],num)
        
        p_name <- append(tmp[1,1],p_name)}
    df<-data.frame(p_name,acr)
    num<-AnimalCount$n
    num_per_acr <- num/acr
    df<-cbind(df,num,num_per_acr)
    
    return(df)
}

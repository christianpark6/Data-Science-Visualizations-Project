library(dplyr)
library(stringr)
library(BHH2)
library(ggplot2)
library(tidyverse)
library(reshape2)
library(magrittr)
#This creates a new data fram calling in all the information from the CSV.
#This adds the column names to the data #Swith out the source in line 10 to where DSProj.csv is!
my_data <- read.csv("/Users/christianpark/Downloads/DSProj.csv",na.strings = c("", "NA"),stringsAsFactors=FALSE) #You must change the pathway to match yours where the CSV I included is located.
colnames(my_data) <- c("ID", "Animal_Type","Park","Abundance",
"Latitude","Longitude","Acreage")

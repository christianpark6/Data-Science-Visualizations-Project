The goal of this project was to conduct data analysis on datasets that included characteristics of national parks all around the world. I wanted to find predictors and find factors that could help explain the population of various animals found in these parks. Through the analysis I had to clean the data, create certain visualizations that would be applicable in terms of helping me conduct my analysis and test whether other recommended visualizations were appropriate.


Below are the instructions to do the following:
1. Download CSV and create new data frame to use with code.
2.Create a function that creates other data frames based on animal category.
3.Create a box plot with error bars, stacked bar chart, and histogram.
4.Create a piechart and horizontal bargraph. 

Must have following packages installed in R for this to work!
library(dplyr)
library(stringr)
library(BHH2)
library(ggplot2)
library(tidyverse)
library(reshape2)
library(magrittr)
Use "install.packages("xxx") command to install the packages.
Instructions:
1. Download all the files including the DSProj.csv included in the DS Project 2.Zip file.
2. Find out the pathway to DSProj.csv in your computer and copy it as you will need this to create the new data frame.
3. Open Rstudio and open the Rscript “Project2Part1.R” included in the DS project 2 folder.
4. Go in the rscipt and go to line 10. 
5. Line 10 should have the following:  my_data <- read.csv("/Users/christianpark/Downloads/DSProj.csv",na.strings. Within the quotes you must paste the source to where “DSProj.CSV” is in the read.csv(“xxxxxx”). 
6. Once you have done this, run the whole script and you should be prompted with a new data frame called my_data.
7. Once you have this open the Rscript “Project2Part2” and run the whole script. This should create a new function called “Animal_df”. This function will helps retrieve information from my_data and create new data frames based on specific animals you pick.
8. Open in R the Rscripts “Project2Part3” ,“Project2Part4” ,and “Project2Part5”.
9. Run all these scripts individually as they will create the box plot with error bars, a stacked bar chart, and a histogram.
10. Look and enjoy the graphs I have created!
BONUS:
11. Open and run the Rscript "Alternatevisualizations.r" to see the alternate visualizations I felt would be better for certain observations with this data. 

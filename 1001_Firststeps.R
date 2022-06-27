# Esto es solo la cabecera del primer script

# 1. LOAD DATA PACKAGES ####
library(datasets)
# library(help="datasets") # To get help on a "package"
# ?dataname # to get help on a specific data

# 2. LOAD DATA ####
?mtcars
head(mtcars)

# 3. PREPARE SOME BAR CHARTS ####
barplot(mtcars$cyl)             # This is not a good try 
# First create a table to summary the data
cylinders <- table(mtcars$cyl)  # Create table
barplot(cylinders)              # Bar chart
plot(cylinders)                 # Default X-Y plot (lines)

# CLEANING UP ####
rm(list = ls()) # to clear the envornment
detach("package:datasets", unload = TRUE)  # To clear the packages
dev.off()  # to clear the plots
cat("\014")  # ctrl+L to clear the console

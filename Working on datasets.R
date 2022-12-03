setwd("D:/CDAC_notes/Module_4_R-Programming/04_R_Programming/Datasets/")
b2 <- read.csv("Bollywood_2015.csv")
b2
b22 <- subset(b2,Budget > 100)
mean(b2$Budget)
lst = list(23.45, "Abhishek", c(2,3,4,5))
lst
b2
#########################################ASSIGNMENT#######################################################
#1. Subset the dataset Orders in the folder datasets to create a dataset with only “Online” payment.
ord <- read.csv("Orders.csv")
ord
ord_online <- subset(ord, ord$Payment.Terms == "Online")
ord_online
write.csv(ord_online, "D:/CDAC_notes/Module_4_R-Programming/04_R_Programming/MyPractise/Output.csv")
##############################################################################################################
#2. Consider the dataset mtcars. Output (write) the data in this data set into a csv file and name the csv file as 
mtcars.csv.
cars <- data.frame(mtcars)
cars
write.csv(cars,"D:/CDAC_notes/Module_4_R-Programming/04_R_Programming/MyPractise/Assignment1/mtcars.csv")
##############################################################################################################
# Consider the dataset diamonds in the folder datasets. Subset the dataset with criteria as cut=Premium and color=J
diamond <- read.csv2("Diamonds.csv")
diamond_premium <- subset(diamond,diamond$cut == "Premium" & diamond$color == "J", select = c(carat, cut, color, clarity))
write.csv(diamond_premium,"D:/CDAC_notes/Module_4_R-Programming/04_R_Programming/MyPractise/Assignment1/Output_3.csv")
write.table(diamond_premium,"D:/CDAC_notes/Module_4_R-Programming/04_R_Programming/MyPractise/Assignment1/trial2_Output.csv",sep = ";", row.names =TRUE, col.names = NA)
#################################################################################################################
#4. Consider the dataset diamonds in the folder datasets. Create a data frame object which stores just variables 
#carat, color, depth and price
diamonds_data <- subset(diamond,select = c(carat, color, depth, price))
write.csv(diamonds_data,"D:/CDAC_notes/Module_4_R-Programming/04_R_Programming/MyPractise/Assignment1/Output_4.csv")
#################################################################################################################
#5. Consider the dataset mtcars. Choose the 2nd, 18th, 30th and 12th rows
selected_cars <- cars[c(1:10),,2]
selected_cars

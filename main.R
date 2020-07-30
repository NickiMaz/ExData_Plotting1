#main script

#Script which call other function
#to make data and build plot

Sys.setlocale("LC_TIME", "English")
source("make_data.R")
source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")

file_name <- "household_power_consumption.txt"
data <- make_data(file_name)
task_data <- data
plot1(data)
plot2(data)
plot3(data)
plot4(data)


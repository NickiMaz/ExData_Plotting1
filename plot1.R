#plot1 function
#
#Script with function
#which make first task plot

plot1 <- function(task_data){
  png(filename = "plot1.png", width = 480, height = 480)
  
  hist(task_data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)"
       , ylab = "Frequency", main = "Global Active Power")
  
  dev.off()
}

#plot2 function
#
#Script with function
#which make second task plot

plot2 <- function(task_data){
  png(filename = "plot2.png", width = 480, height = 480)
  
  plot(y = task_data$Global_active_power, x = task_data$Data_Time, type = "l", xlab = "datetime"
       , ylab = "Global Active Power (kilowatts)")
  
  dev.off()
}
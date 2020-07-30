#plot3 function
#
#Script with function
#which make third task plot

plot3 <- function(task_data){
  png(filename = "plot3.png", width = 480, height = 480)
  
  plot(y = task_data$Sub_metering_1, x = task_data$Data_Time, type = "l", xlab = ""
       , ylab = "Energy sub metering", col = "black")
  
  points(y = task_data$Sub_metering_2, x = task_data$Data_Time, type = "l", col = "red")
  
  points(y = task_data$Sub_metering_3, x = task_data$Data_Time, type = "l", col = "blue")
  
  legend("topright",col = c("black", "red", "blue")
         , legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1)
  
  dev.off()
}
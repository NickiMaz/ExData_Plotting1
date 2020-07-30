#plot4 function
#
#Script with function
#which make last four task plots

plot4 <- function(task_data){
  png(filename = "plot4.png", width = 480, height = 480)
  
  par(mfrow = c(2, 2))
  
  #first plot
  plot(y = task_data$Global_active_power, x = task_data$Data_Time, type = "l", xlab = ""
       , ylab = "Global Active Power (kilowatts)")
  #second plot
  plot(y = task_data$Global_active_power, x = task_data$Data_Time, type = "l", xlab = "datetime"
       , ylab = "Voltage")
  
  #third plot
  plot(y = task_data$Sub_metering_1, x = task_data$Data_Time, type = "l", xlab = ""
       , ylab = "Energy sub metering", col = "black")
  
  points(y = task_data$Sub_metering_2, x = task_data$Data_Time, type = "l", col = "red")
  
  points(y = task_data$Sub_metering_3, x = task_data$Data_Time, type = "l", col = "blue")
  
  legend("topright",col = c("black", "red", "blue")
         , legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, )
  
  #fourth plot
  plot(y = task_data$Global_reactive_power, x = data$Data_Time, type = "l", xlab = "datetime"
       , ylab = "Global_reactive_power")
  
  dev.off()
}
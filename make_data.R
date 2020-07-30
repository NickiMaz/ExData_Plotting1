#make_data function

#This function make final complete data set
#which used in graphic analisys

#To make simply final data uses lubridate package
#to work with date format

make_data <- function(file_name){
  library(lubridate)
  full_data <- read.csv2(file = file_name, header = TRUE, 
                          stringsAsFactors = FALSE)
  task_data <- subset(x = full_data, Date == '1/2/2007' | Date == '2/2/2007')
  task_data$Data_Time <- paste(task_data$Date, task_data$Time)
  task_data$Data_Time <- dmy_hms(task_data$Data_Time)
  task_data$Date <- NULL; task_data$Time <- NULL 
  for (i in 1:7) {
    task_data[[i]] <- as.numeric(task_data[[i]])
  }
  return(task_data)  
}
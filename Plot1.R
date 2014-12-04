## analyzing the data before reading into memory
  con <- file("household_power_consumption.txt")
  top <- readLines(con, n = 10)
  close(con)
  top
  
## read data 
  data <- read.table(file = "household_power_consumption.txt", sep = ";", 
                     header = TRUE, colClasses = c(rep("character", 2), rep("numeric", 7)), 
                     na.strings = "?")
  
  head(data)
  
  cond <- as.Date(data$Date, "%d/%m/%Y") == as.Date("2007/02/01") | as.Date(data$Date, "%d/%m/%Y") == as.Date("2007/02/02")
  smallData <- data[cond, ]
  # remove original data from memory
  rm(data)
  # set some parameters
  par(cex = 0.7, font.axis = 1, font.main = 2) 
  # plotting histogram
  hist(smallData$Global_active_power, col = "RED", 
       main = "Global Active Power", xlab = "Global Active Power (killowatts)", ylab = "Frequency")
  
  # copy to a png file (TODO -- how to control the resolution 480 x 480)
  dev.copy(png, "plot1.png")
  dev.off()
   
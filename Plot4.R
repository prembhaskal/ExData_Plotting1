source("InitData.R")

png(filename = "plot4.png", width = 504, height = 504, units = "px",
    bg = "transparent")

par(mfcol = c(2,2))
par(cex = 0.8, font.axis = 1, font.main = 2, font.lab = 2)   
# plot1
  # set some parameters
  # plotting histogram
  plot(smallData$datetime, smallData$Global_active_power, type = "n",
       ylab = "Global Active Power", xlab = "")
  lines(smallData$datetime, smallData$Global_active_power)

# plot2
  plot(smallData$datetime, smallData$Sub_metering_1, type = "n",
       ylab = "Energy sub metering", xlab = "")
  with(smallData, lines(datetime, Sub_metering_1))
  with(smallData, lines(datetime, Sub_metering_2, col = "red"))
  with(smallData, lines(datetime, Sub_metering_3, col = "blue"))
  
  legend("topright", 
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         col = c("black", "red", "blue"), 
         lty = c(1,1,1), bty = "n")

# plot3
  with(smallData, plot(datetime, Voltage, type = "n"))
  with(smallData, lines(datetime, Voltage))
  
# plot 4
  with(smallData, plot(datetime, Global_reactive_power, type = "n"))
  with(smallData, lines(datetime, Global_reactive_power))

# close the device
dev.off()
source("InitData.R")
# initiate a png device
png(filename = "plot1.png", width = 480, height = 480, units = "px",
    bg = "transparent")

  # set some parameters
  par(cex = 1, font.axis = 1, font.main = 2) 
  # plotting histogram
  hist(smallData$Global_active_power, col = "RED", 
       main = "Global Active Power", xlab = "Global Active Power (killowatts)", ylab = "Frequency")
  
  # copy to a png file (TODO -- how to control the resolution 480 x 480)
#   dev.copy(png, "plot1.png")

# close the device
  dev.off()
   
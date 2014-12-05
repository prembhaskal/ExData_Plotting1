source("InitData.R")
# plot 3
# initiate a png device
png(filename = "plot3.png", width = 480, height = 480, units = "px",
    bg = "transparent")
par(cex = 1, font.axis = 1, font.main = 2)   
plot(smallData$datetime, smallData$Sub_metering_1, type = "n",
     ylab = "Energy sub metering", xlab = "")
with(smallData, lines(datetime, Sub_metering_1))
with(smallData, lines(datetime, Sub_metering_2, col = "red"))
with(smallData, lines(datetime, Sub_metering_3, col = "blue"))

legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), 
       lty = c(1,1,1))

# copy to a png file (TODO -- how to control the resolution 480 x 480)

# dev.copy(plot3png, "plot3.png")
dev.off()
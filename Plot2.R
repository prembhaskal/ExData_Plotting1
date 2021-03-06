source("InitData.R")
# initiate a png device
png(filename = "plot2.png", width = 480, height = 480, units = "px",
    bg = "transparent")

par(cex = 1, font.axis = 1, font.main = 2) 
# plot intuitively identifies the POSIXct  x-axis
plot(smallData$datetime, smallData$Global_active_power, type = "n",
     ylab = "Global Active Power (killowatts)", xlab = "")
lines(smallData$datetime, smallData$Global_active_power)

# copy to a png file (TODO -- how to control the resolution 480 x 480)
# dev.copy(png, "plot2.png")
dev.off()
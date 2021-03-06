## ggplot 2 library

library(ggplot2)

## read the data
NEI <- readRDS(file = "summarySCC_PM25.rds")
SCC <- readRDS(file = "Source_Classification_Code.rds")

# filter the baltimore city data.
baltimoreData <- NEI[NEI$fips == "24510", ]

## group the total emission per year and by type.
emissionsByYearType <- aggregate(Emissions ~ year + type, data = baltimoreData, sum)

# initiate a png device
png(filename = "plot3.png", width = 800, height = 480, units = "px")

# added a geom_smooth() to get the progression.
g <- ggplot(emissionsByYearType, aes(x = year, y = Emissions))
g <- g + geom_point() + geom_smooth(method = "lm")
g <- g + facet_grid( . ~ type)
g <- g + labs(x = "year", y = "PM2.5 emissions (in tonnes)")
g <- g + ggtitle("PM2 Emission by different sources")
print(g)

# close the device.
dev.off()

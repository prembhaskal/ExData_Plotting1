
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
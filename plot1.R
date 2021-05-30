#PLOT 1
electric <- read.csv("~/household_power_consumption.txt", header = TRUE, sep = ";")
electric_1_2 <- subset(electric, electric$Date=="1/2/2007" | electric$Date=="2/2/2007")
hist(as.numeric(electric_1_2$Global_active_power)
     , col = "red", xlab ="Global Active Power (kilowatts)",
     ylab = "Frequency",
     main = "Global Active Power")



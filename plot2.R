#PLOT2

electric <- read.csv("~/household_power_consumption.txt", header = TRUE, sep = ";")
electric_1_2 <- subset(electric, electric$Date=="1/2/2007" | electric$Date=="2/2/2007")

electric_1_2$Date <- as.Date(electric_1_2$Date, format = "%d/%m/%Y")
electric_1_2$Time <- strptime(electric_1_2$Time, format = "%H:%M:%S")
electric_1_2[1:1440,"Time"] <- format(electric_1_2[1:1440,"Time"],"2007-02-01 %H:%M:%S")
electric_1_2[1441:2880,"Time"] <- format(electric_1_2[1441:2880,"Time"],"2007-02-02 %H:%M:%S")


plot(electric_1_2$Time,as.numeric(electric_1_2$Global_active_power),
     type="l",xlab="",ylab="Global Active Power (kilowatts)",
     main = "Global Active Power Vs Time") 

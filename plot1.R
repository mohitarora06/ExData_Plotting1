#Script for plot 1

#Reading data 

data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
required_data1 <- data[ which( data$Date == "2/2/2007") , ]
required_data2 <- data[ which( data$Date == "1/2/2007") , ]
final_data <- rbind(required_data1, required_data2)
final_data <- cbind(final_data, strptime(final_data[, 1:2], "%d/%m/%y %H:%M:%S"))

png("plot1.png")
hist(final_data$Global_active_power, main="Global Active Power",
        xlab="Global Active Power(kilowatts)", col = "Red")
dev.off()
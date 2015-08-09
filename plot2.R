#Script for plot 2

#data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")
required_data1 <- data[ which( data$Date == "2/2/2007") , ]
required_data2 <- data[ which( data$Date == "1/2/2007") , ]
final_data <- rbind(required_data1, required_data2)
final_data <- cbind(data_time = strptime(paste(final_data$Date, final_data$Time), "%d/%m/%Y %H:%M:%S"), final_data)

png("plot2.png")
plot(final_data$data_time, final_data$Global_active_power, type="l", xaxt = "n")
dev.off()
##Plot3

## Extracting data
fulldata<-read.csv("household_power_consumption.txt", header=TRUE, sep=";",na.strings="?")
data <- fulldata[fulldata$Date %in% c("1/2/2007","2/2/2007") ,]

#Converting dates
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

#Plot graph
png("plot3.png", width=480, height=480)
plot(datetime, data$Sub_metering_1, type="l", ylab="Energy Sub metering", xlab="") 
lines(datetime, data$Sub_metering_2, type="l", col="red") 
lines(datetime, data$Sub_metering_3, type="l", col="blue") 
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue")) 
dev.off()
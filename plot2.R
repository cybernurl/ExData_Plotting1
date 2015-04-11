##Plot2

## Extracting data
fulldata<-read.csv("household_power_consumption.txt", header=TRUE, sep=";",na.strings="?")
data <- fulldata[fulldata$Date %in% c("1/2/2007","2/2/2007") ,]

#Converting dates
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

##Plot graph
png("plot2.png", width=480, height=480)
plot(datetime, data$Global_active_power, type="l", xlab="", 
     ylab="Global Active Power (kilowatts)")
dev.off()
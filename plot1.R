##Plot1

## Extracting data
fulldata<-read.csv("household_power_consumption.txt", header=TRUE, sep=";",na.strings="?")
data <- fulldata[fulldata$Date %in% c("1/2/2007","2/2/2007") ,]

##plot graph
png("plot1.png", width=480, height=480)
hist(data$Global_active_power, main="Global Active Power",  
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red") 
dev.off()
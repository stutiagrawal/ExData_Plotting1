data = read.table("/Users/stuti/Downloads/household_power_consumption.txt", sep=";", header=T)
w =  which(data$Date == "1/2/2007" | data$Date == "2/2/2007")
m = data[w,]
m<- within(m, day <- paste(m$Date, m$Time, sep=" "))
m$day <- strptime(m$day, format="%d/%m/%Y %H:%M:%S")
plot(m$day, m$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering")
lines(m$day, m$Sub_metering_2, type="l", col="red")
lines(m$day, m$Sub_metering_3, type="l", col="blue")
legend("topright", legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "blue", "red"))
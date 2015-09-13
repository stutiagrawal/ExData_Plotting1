data = read.table("/Users/stuti/Downloads/household_power_consumption.txt", sep=";", header=T)
w =  which(data$Date == "1/2/2007" | data$Date == "2/2/2007")
m = data[w,]
m<- within(m, day <- paste(m$Date, m$Time, sep=" "))
m$day <- strptime(m$day, format="%d/%m/%Y %H:%M:%S")
plot(m$day, m$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

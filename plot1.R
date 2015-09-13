data = read.table("/Users/stuti/Downloads/household_power_consumption.txt", sep=";", header=T)
w =  which(data$Date == "1/2/2007" | data$Date == "2/2/2007")
m = data[w,]
hist(as.numeric(m$Global_active_power), col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main = "Global Active Power")
png(filename="plot1.png", width=480, height=480)
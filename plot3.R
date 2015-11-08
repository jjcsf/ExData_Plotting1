dt<-read.delim("household_power_consumption.txt", sep=";",,na.strings = "?")
dt<-dt[dt$Date %in% c('1/2/2007','2/2/2007'),]

png(file="plot3.png",width = 480, height = 480)

plot(strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S"),as.numeric(as.character(dt$Sub_metering_1)),type="l",ylab="Energy Sub metering",xlab="")
points(strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S"),as.numeric(as.character(dt$Sub_metering_2)),type="l",col="red")
points(strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S"),as.numeric(as.character(dt$Sub_metering_3)),type="l",col="blue")
legend("topright", col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),pch="-",lwd=3)

dev.off()

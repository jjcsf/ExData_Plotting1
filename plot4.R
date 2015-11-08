dt<-read.delim("household_power_consumption.txt", sep=";",na.strings = "?")
dt<-dt[dt$Date %in% c('1/2/2007','2/2/2007'),]

png(file="plot4.png",width = 480, height = 480)

par(mfrow=c(2,2))

plot(strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S"),as.numeric(as.character(dt$Global_active_power)),type="l",ylab="Global Active Power",xlab="")

plot(strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S"),as.numeric(as.character(dt$Voltage)),type="l",ylab="Voltage",xlab="datetime")


plot(strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S"),as.numeric(as.character(dt$Sub_metering_1)),type="l",ylab="Energy Sub metering",xlab="")
points(strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S"),as.numeric(as.character(dt$Sub_metering_2)),type="l",col="red")
points(strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S"),as.numeric(as.character(dt$Sub_metering_3)),type="l",col="blue")
legend("topright", col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),pch="-",lwd=3, bty="n")

plot(strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S"),as.numeric(as.character(dt$Global_reactive_power)),type="l",ylab="Global_reactive_power",xlab="datetime")


dev.off()

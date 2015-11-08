dt<-read.delim("household_power_consumption.txt", sep=";",na.strings = "?")
dt<-dt[dt$Date %in% c('1/2/2007','2/2/2007'),]

png(file="plot2.png",width = 480, height = 480)

with(dt,plot(strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S"),as.numeric(as.character(dt$Global_active_power)),type="l",ylab="Global Active Power (kilowatts)",xlab=""))
dev.off()

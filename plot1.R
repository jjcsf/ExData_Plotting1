dt<-read.delim("household_power_consumption.txt", sep=";")
dt<-dt[dt$Date %in% c('1/2/2007','2/2/2007'),]

png(file="plot1.png",width = 480, height = 480)

with(dt,hist(as.numeric(as.character(dt$Global_active_power)),main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red"))
dev.off()

#loading the data

setwd("C:/Program Files/sonia_files/studing/r_prog/assigment1_exploratory_analysis")
data<-read.table("household_power_consumption.txt", sep=";" ,header=TRUE,na.strings = "?")
data2<-subset(data,Date == "1/2/2007" | Date=="2/2/2007")

#figure 4:
png(file="plot4.png")

par(mfrow=c(2,2),bg="transparent")

plot(DateTime,data2$Global_active_power, type="n",xlab="", ylab="Global Active Power (kilowatts)")
lines(DateTime,data2$Global_active_power)

plot(DateTime,data2$Voltage, type="n",xlab="datetime", ylab="Voltage")
lines(DateTime,data2$Voltage)

plot(DateTime,data2$Sub_metering_1,xlab="",ylab="Energy sub metering",type="n")
lines(DateTime,data2$Sub_metering_1)
lines(DateTime,data2$Sub_metering_2, col="red")
lines(DateTime,data2$Sub_metering_3, col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"),
       lty=1, bty="n")

plot(DateTime,data2$Global_reactive_power, type="n",xlab="datetime", ylab="Global Active Power")
lines(DateTime,data2$Global_reactive_power)
dev.off()

#loading the data

setwd("C:/Program Files/sonia_files/studing/r_prog/assigment1_exploratory_analysis")
data<-read.table("household_power_consumption.txt", sep=";" ,header=TRUE,na.strings = "?")
data2<-subset(data,Date == "1/2/2007" | Date=="2/2/2007")

#figure 3:
png(file="plot3.png")
par(bg="transparent")
plot(DateTime,data2$Sub_metering_1,xlab="",ylab="Energy sub metering",type="n")
lines(DateTime,data2$Sub_metering_1)
lines(DateTime,data2$Sub_metering_2, col="red")
lines(DateTime,data2$Sub_metering_3, col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lty=1)
dev.off()
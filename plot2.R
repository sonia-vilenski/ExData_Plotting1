#loading the data

setwd("C:/Program Files/sonia_files/studing/r_prog/assigment1_exploratory_analysis")
data<-read.table("household_power_consumption.txt", sep=";" ,header=TRUE,na.strings = "?")
data2<-subset(data,Date == "1/2/2007" | Date=="2/2/2007")


#figuer 2:
DateTime <- paste(data2$Date, data2$Time, sep="")
DateTime <- strptime(DateTime, format = "%d/%m/%Y%H:%M:%S")

png(file="plot2.png")
par(bg="transparent")
plot(DateTime,data2$Global_active_power, type="n",xlab="", ylab="Global Active Power (kilowatts)")
lines(DateTime,data2$Global_active_power)
dev.off()
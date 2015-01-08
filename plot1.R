#loading the data

setwd("C:/Program Files/sonia_files/studing/r_prog/assigment1_exploratory_analysis")
data<-read.table("household_power_consumption.txt", sep=";" ,header=TRUE,na.strings = "?")
data2<-subset(data,Date == "1/2/2007" | Date=="2/2/2007")


#figure 1:
png(file="plot1.png")
par(bg="transparent")
hist(data2$Global_active_power,col="red",xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
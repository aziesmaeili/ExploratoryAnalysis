exercis= read.table("household_power_consumption 2.txt",colClasses=c("character","character",rep("numeric",7)),head=TRUE, sep=";" ,na="?")
dayday=subset(exercis,Date=="1/2/2007"|Date=="2/2/2007")
timeinday=paste(dayday$Date,dayday$Time)
dayday$cal=strptime(timeinday, "%d/%m/%Y %H:%M:%S")



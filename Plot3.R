exercis= read.table("household_power_consumption 2.txt",colClasses=c("character","character",rep("numeric",7)),head=TRUE, sep=";" ,na="?")
dayday=subset(exercis,Date=="1/2/2007"|Date=="2/2/2007")
timeinday=paste(dayday$Date,dayday$Time)
dayday$cal=strptime(timeinday, "%d/%m/%Y %H:%M:%S")
plot(dayday$cal,dayday$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(dayday$cal,dayday$Sub_metering_2,col="red")
lines(dayday$cal,dayday$Sub_metering_3,col="blue")
legend("topright",inset=.05,c("submetring1","submetring2","submetring3"), lty=c(1,1,1),col=c("black", "red", "blue") )
dev.copy(png,file="project1plot3.png")
dev.off()

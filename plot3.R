#plot3
source("plotHelper.R")
plot(epConsumption$Time, epConsumption$Sub_metering_1, type="l",
     xlab = "", ylab = "Energy sub metering")
points(epConsumption$Time, epConsumption$Sub_metering_2, type="l", col="red")
points(epConsumption$Time, epConsumption$Sub_metering_3, type="l", col="blue")
legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1),col=c("black", "blue","red"))

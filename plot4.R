#plot4.R
source("plotHelper.R")

par(mfcol = c(2, 2))
plot(epConsumption$Time, epConsumption$Global_active_power, type="l",
     ylab = "Global Active Power", xlab = "")
plot(epConsumption$Time, epConsumption$Sub_metering_1, type="l",
     xlab = "", ylab = "Energy sub metering")
points(epConsumption$Time, epConsumption$Sub_metering_2, type="l", col="red")
points(epConsumption$Time, epConsumption$Sub_metering_3, type="l", col="blue")
legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1),col=c("black", "blue","red"), bty = "n")

with(epConsumption,
     plot(Time, Voltage, type="l",
          ylab = "Voltage", xlab = "datetime"))
with(epConsumption,
     plot(datetime, Global_reactive_power, type="l"))



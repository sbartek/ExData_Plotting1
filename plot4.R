#plot4.R
source("plotHelper.R")
png(filename = "figure/plot4.png",
    width = 480, height = 480, units = "px")
par(mfcol = c(2, 2))
with(epConsumption, {
    plot(datetime, Global_active_power, type="l",
         ylab = "Global Active Power", xlab = "")
    plot(datetime, Sub_metering_1, type="l",
         xlab = "", ylab = "Energy sub metering")
    points(datetime, Sub_metering_2, type="l", col="red")
    points(datetime, Sub_metering_3, type="l", col="blue")
    legend("topright",
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=c(1,1,1),col=c("black", "blue","red"), bty = "n")
    plot(datetime, Voltage, type="l",
         ylab = "Voltage", xlab = "datetime")
    plot(datetime, Global_reactive_power, type="l")
})
dev.off()


#Plot3: Submeterings

#For being fully reproduced include code for reading the data:
source("plotHelper.R")

#Plots:
png(filename = "plot3.png",
    width = 480, height = 480, units = "px")
par(mfcol = c(1, 1))
with(epConsumption,
     {plot(datetime, Sub_metering_1, type="l",
           xlab = "", ylab = "Energy sub metering")
      points(datetime, Sub_metering_2, type="l", col="red")
      points(epConsumption$datetime, epConsumption$Sub_metering_3, type="l", col="blue")
  })
legend("topright",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1,1),
       col=c("black", "blue","red"))
dev.off()

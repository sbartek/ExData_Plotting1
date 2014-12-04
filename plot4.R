if (!exists("epConsumption")) source("readEpConsumption.R")
par(mfcol = c(2, 2))
source("plot1.R")
source("plot2.R")

plot(epConsumption$Time, epConsumption$Voltage, type="l",
     ylab = "Voltage", xlab = "datetime")

plot(epConsumption$Time, epConsumption$Global_reactive_power, type="l",
     ylab = "Global Active Power (kilowatt)", xlab = "datetime")



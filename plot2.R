#Plot2: Global Active Power (kilowatt)

#For being fully reproduced include code for reading the data:
source("plotHelper.R")

#Plots
png(filename = "plot2.png",
    width = 480, height = 480, units = "px")
par(mfcol = c(1, 1))
with(epConsumption,
     plot(datetime, Global_active_power,
          type="l", ylab = "Global Active Power (kilowatt)", xlab = ""))
dev.off()

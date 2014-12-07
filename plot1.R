#Plot1: Global Active Power

#For being fully reproduced include code for reading the data:
source("plotHelper.R")

#Plots
png(filename = "plot1.png",
    width = 480, height = 480, units = "px")
par(mfcol = c(1, 1))
with(epConsumption,
     hist(Global_active_power, col = "red", xlab="Global Active Power",
          main="Global Active Power"))
dev.off()

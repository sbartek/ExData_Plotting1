#plot1
source("plotHelper.R")
png(filename = "figure/plot1.png",
    width = 480, height = 480, units = "px")
with(epConsumption,
     hist(Global_active_power, col = "red", xlab="Global Active Power",
          main="Global Active Power"))
dev.off()

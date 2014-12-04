#plot2
source("plotHelper.R")
png(filename = "figure/plot2.png",
    width = 480, height = 480, units = "px")
with(epConsumption,
     plot(datetime, Global_active_power,
          type="l", ylab = "Global Active Power (kilowatt)", xlab = ""))
dev.off()

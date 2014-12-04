if (!exists("epConsumption")) source("readEpConsumption.R")
#plot1

hist(epConsumption$Global_active_power, col = "red")


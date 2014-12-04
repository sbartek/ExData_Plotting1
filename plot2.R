if (!exists("epConsumption")) print("call dta...")

#plot2

plot(epConsumption$Time, epConsumption$Global_active_power, type="l",
     ylab = "Global Active Power (kilowatt)", xlab = "")


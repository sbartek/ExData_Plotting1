if (!file.exists("data")) dir.create("data")

#Individual household electric power consumption Data Set
fileZipHref <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
fileZipName <- "exdata-data-household_power_consumption.zip"
fileZipPath <- paste0("data/",fileZipName)
if (!file.exists(fileZipPath)) download.file(fileZipHref, destFile<-"filePath", method = "curl")
fileName <- "household_power_consumption.txt"
filePath <- paste0("data/", fileName)
if (!file.exists(filePath)) unzip(fileZipPath, exdir = 'data')

#read data
#todo: find line numbers that corresponds to starting and finishing dates

epConsumption <- read.table(filePath, header = T, sep = ";", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings = "?")
epConsumption <- epConsumption[((epConsumption$Date == "1/2/2007") | (epConsumption$Date == "2/2/2007") ),]
dateTimes <- paste(epConsumption$Date, epConsumption$Time)
str(dateTimes)
epConsumption$Time <- strptime(dateTimes,"%d/%m/%Y %H:%M:%S") 
epConsumption$Date<-as.Date(epConsumption$Date, format = "%d/%m/%Y")

#plot1
hist(epConsumption$Global_active_power, col = "red")

#plot2

plot(epConsumption$Time, epConsumption$Global_active_power, type="l",
     ylab = "Global Active Power (kilowatt)", xlab = "")


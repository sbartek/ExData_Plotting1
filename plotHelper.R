if (!exists("epConsumption")) {
    #Set locale for English (GB)
    Sys.setlocale("LC_TIME", "en_GB.utf8") 

    if (!file.exists("data")) dir.create("data")

    #Individual household electric power consumption Data Set
    fileZipHref <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    fileZipName <- "exdata-data-household_power_consumption.zip"
    fileZipPath <- paste0("data/",fileZipName)
    if (!file.exists(fileZipPath)) download.file(fileZipHref, destfile=fileZipPath, method = "curl")
    fileName <- "household_power_consumption.txt"
    filePath <- paste0("data/", fileName)
    if (!file.exists(filePath)) unzip(fileZipPath, exdir = 'data')
    
    #read table into memory
    epConsumption <-
        read.table(filePath, header = T, sep = ";",
                   colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),
                   na.strings = "?")
    #restricts only to 1/2/2007 or 2/2/2007
    epConsumption <- epConsumption[((epConsumption$Date == "1/2/2007") | (epConsumption$Date == "2/2/2007") ),]
    #reformats dates
    dateTimes <- paste(epConsumption$Date, epConsumption$Time)
    epConsumption$Time <- strptime(dateTimes,"%d/%m/%Y %H:%M:%S") 
    epConsumption$Date<-as.Date(epConsumption$Date, format = "%d/%m/%Y")
    names(epConsumption)[2] <- "datetime"
}

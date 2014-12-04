if (!file.exists("data")) dir.create("data")

#Individual household electric power consumption Data Set
fileZipHref <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
fileZipName <- "exdata-data-household_power_consumption.zip"
fileZipPath <- paste0("data/",fileZipName)
if (!file.exists(fileZipPath)) download.file(fileZipHref, destFile<-"filePath", method = "curl")
fileName <- "household_power_consumption.txt"
filePath <- paste0("data/", fileName)
if (!file.exists(filePath)) unzip(fileZipPath, exdir = 'data')

# Download and process file

# Set working directory 
setwd("C:\\z_DATAJHU2015\\ExploratoryDataAnalysis201501\\Project1")

# Load required packages
library(data.table)
library(lubridate)

# If processed data file not exists
if(!file.exists("powerprocessed.txt")){
	# Download and unzip if unzipped file not exists
	if(!file.exists("household_power_consumption.txt")){
		# Download only if needed
		if(!file.exists("power.zip")){
			message("Download file")		
			daturl<-'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
			destfile <- 'power.zip'
			download.file(daturl, destfile)
		}
		message("Unzip file")
		unzip('power.zip')
	}
	message("Process file")
	# Read table and select only 2 days
	colClass<-c(rep('character',2),rep('numeric',7))
	powerCon<-read.table('household_power_consumption.txt',header=TRUE,
				      sep=';',na.strings='?',colClasses=colClass)
	powerCon<-powerCon[powerCon$Date=='1/2/2007' | powerCon$Date=='2/2/2007',]
	
	# Rename variables
	cols<-c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity',
		'SubMetering1','SubMetering2','SubMetering3')
	colnames(powerCon)<-cols
	# Convert date and time formats
	powerCon$DateTime<-dmy(powerCon$Date)+hms(powerCon$Time)
	powerCon<-powerCon[,c(10,3:9)]
	
	# Write selected and processed data to file
	write.table(powerCon,file='powerprocessed.txt',sep='|',row.names=FALSE)
} else {
	# If processed data file exists
	powerCon<-read.table('powerprocessed.txt',header=TRUE,sep='|')
	powerCon$DateTime<-as.POSIXlt(powerCon$DateTime)
	
}



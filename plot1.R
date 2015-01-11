# Create first plot

# Set working directory 
setwd("C:\\z_DATAJHU2015\\ExploratoryDataAnalysis201501\\Project1")

# Download and process file
source('GetData.R')

# Open grphics device
png(filename='plot1.png',width=480,height=480,units='px')

# Plot data
hist(powerCon$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# Turn off device
x<-dev.off()
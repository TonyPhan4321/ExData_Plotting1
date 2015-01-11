# Create second plot

# Set working directory 
setwd("C:\\z_DATAJHU2015\\ExploratoryDataAnalysis201501\\Project1")

# Download and process file
source('GetData.R')

# Open graphic device
png(filename='plot2.png',width=480,height=480,units='px')

# Plot data
plot(powerCon$DateTime, powerCon$GlobalActivePower,ylab='Global Active Power (kilowatts)', xlab='', type='l')

# Close graphic device 
x<-dev.off()
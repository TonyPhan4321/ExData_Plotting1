
# Create fourth plot

# Set working directory 
setwd("C:\\z_DATAJHU2015\\ExploratoryDataAnalysis201501\\Project1")

# Download and process file
source('GetData.R')

# Open graphic device
png(filename='plot4.png',width=480,height=480,units='px')

# Create four plots
par(mfrow=c(2,2))

# plot data on top left (1,1)
plot(powerCon$DateTime,powerCon$GlobalActivePower,ylab='Global Active Power',xlab='',type='l')

# plot data on top right (1,2)
plot(powerCon$DateTime,powerCon$Voltage,xlab='Date time',ylab='Voltage',type='l')

# plot data on bottom left (2,1)
lncol<-c('black','red','blue')
lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(powerCon$DateTime,powerCon$SubMetering1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(powerCon$DateTime,powerCon$SubMetering2,col=lncol[2])
lines(powerCon$DateTime,powerCon$SubMetering3,col=lncol[3])

# plot data on bottom right (2,2)
plot(powerCon$DateTime,powerCon$GlobalReactivePower,xlab='Date time',ylab='Global Reactive Power',type='l')

# close device
x<-dev.off()

# Create third plot

# Set working directory 
setwd("C:\\z_DATAJHU2015\\ExploratoryDataAnalysis201501\\Project1")

# Download and process file
source('GetData.R')

# Open graphic device
png(filename='plot3.png',width=480,height=480,units='px')

# Plot data
lncol<-c('black','red','blue')
lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(powerCon$DateTime,powerCon$SubMetering1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(powerCon$DateTime,powerCon$SubMetering2,col=lncol[2])
lines(powerCon$DateTime,powerCon$SubMetering3,col=lncol[3])

# Add legends
legend('topright',legend=lbls,col=lncol,lty='solid')

# Close graphic device
x<-dev.off()

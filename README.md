

## Introduction

This assignment is to examine how household energy usage varies over a 2-day period from 2007-02-01 and 2007-02-02 using “Individual household electric power consumption Data Set” from the UC Irvine Machine Learning Repository.

## Data Set descriptions

* Dataset: Electric power consumption [20Mb]
* Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.

The following descriptions of the 9 variables in the dataset are taken from the UCI web site:
1. Date: Date in format dd/mm/yyyy 
2. Time: time in format hh:mm:ss 
3. Global_active_power: household global minute-averaged active power (in kilowatt) 
4. Global_reactive_power: household global minute-averaged reactive power (in kilowatt) 
5. Voltage: minute-averaged voltage (in volt) 
6. Global_intensity: household global minute-averaged current intensity (in ampere) 
7. Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). 
8. Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. 
9. Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

## Loading the data
GetData.R downloads data file, unzips, changes variable names and selects necessary data to write to file “powerCon.txt”
Variable names have been changed to Camel case to improve readability.
To save time all steps are only performed based on necessity, if new data are required, please delete the existing files.
 
## Making Plots
Separate R code files (plot1.R, plot2.R, etc.)  construct the corresponding plot, i.e. code in plot1.R constructs the plot1.png plot.
Each R code file run GetData.R to download and process data set to get data to be plotted.




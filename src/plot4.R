# -----------------------------------------------------------------------------------------------
#
#   File: plot4.R
#   Author: Fredrick Stakem
#   Created: 8.6.14
#
#   Purpose: The purpose of this code is to plot four different graphs
#               1) Global Active Power versus time
#               2) Voltage versus time
#               3) Energy sub meetering versus time
#               4) Global reactive power versus time
#
# -----------------------------------------------------------------------------------------------

# Libraries

# Source
source('./parameters.R')
source('./utilities.R')
source('./plot2.R')
source('./plot3.R')

plot_voltage_versus_time <- function(data)
{
    plot(data$timestamp, data$Voltage, xlab='datetime', ylab="Voltage", type="n")
    lines(data$timestamp, data$Voltage)
}

plot_reactive_power_versus_time <- function(data)
{
    plot(data$timestamp, data$Global_reactive_power, xlab='datetime', ylab="Global_reactive_power", type="n")
    lines(data$timestamp, data$Global_reactive_power)
}

plot_graphs <- function(data)
{
    par(mfrow=c(2,2))
    
    # Plot 1 
    plot_power_versus_time(data, FALSE)
    
    # Plot 2
    plot_voltage_versus_time(data)
    
    # Plot 3
    plot_energy_sub_metering_versus_time(data, FALSE)
    
    # Plot 4
    plot_reactive_power_versus_time(data)
    
}

# Run code
imported_data <- import_data_range(raw_data_path, start_date, end_date)
png(filename=figure_4_path, width=480, height=480)
plot_graphs(imported_data)
dev.off()
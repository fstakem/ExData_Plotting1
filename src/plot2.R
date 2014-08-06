# -----------------------------------------------------------------------------------------------
#
#   File: plot2.R
#   Author: Fredrick Stakem
#   Created: 8.6.14
#
#   Purpose: The purpose of this code is to plot the power versus time.
#
# -----------------------------------------------------------------------------------------------

# Libraries

# Source
source('./parameters.R')
source('./utilities.R')

plot_power_versus_time <- function(data)
{
    png(filename="../figure/plot2.png", width=480, height=480)
    
    plot(data$timestamp, data$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="n")
    lines(data$timestamp, data$Global_active_power)
    dev.off()
}

# Run code
imported_data <- import_data_range(raw_data_path, start_date, end_date)
plot_power_versus_time(imported_data)
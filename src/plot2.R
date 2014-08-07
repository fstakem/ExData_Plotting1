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

plot_power_versus_time <- function(data, show_units=TRUE)
{
    y_axis <- 'Global Active Power'
    if(show_units)
    {
        y_axis <- 'Global Active Power (kilowatts)'
    }
    
    plot(data$timestamp, data$Global_active_power, xlab="", ylab=y_axis, type="n")
    lines(data$timestamp, data$Global_active_power)
}

# Run code
imported_data <- import_data_range(raw_data_path, start_date, end_date)
png(filename=figure_2_path, width=480, height=480)
plot_power_versus_time(imported_data)
dev.off()
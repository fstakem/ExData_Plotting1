# -----------------------------------------------------------------------------------------------
#
#   File: plot1.R
#   Author: Fredrick Stakem
#   Created: 8.6.14
#
#   Purpose: The purpose of this code is to plot the frequency versus the power.
#
# -----------------------------------------------------------------------------------------------

# Libraries

# Source
source('./parameters.R')
source('./utilities.R')

plot_freq_vs_power <- function(data)
{
    png(filename="../figure/plot1.png", width=480, height=480)
    hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col='red')
    dev.off()
}

# Run code
imported_data <- import_data_range(raw_data_path, start_date, end_date)
plot_freq_vs_power(imported_data)
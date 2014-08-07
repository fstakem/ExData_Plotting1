# -----------------------------------------------------------------------------------------------
#
#   File: plot3.R
#   Author: Fredrick Stakem
#   Created: 8.6.14
#
#   Purpose: The purpose of this code is to plot the energy sub metering versus time.
#
# -----------------------------------------------------------------------------------------------

# Libraries

# Source
source('./parameters.R')
source('./utilities.R')

plot_energy_sub_metering_versus_time <- function(data, legend_border=TRUE)
{
    plot(data$timestamp, data$Sub_metering_1, xlab="", ylab="Energy sub metering", type="n")
    lines(data$timestamp, data$Sub_metering_1, col="black")
    lines(data$timestamp, data$Sub_metering_2, col="red")
    lines(data$timestamp, data$Sub_metering_3, col="blue")
    
    border = "o"
    if(!legend_border)
    {
        border <- "n"
    }
    
    legend("topright", c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty=c(1,1), lwd=c(2.5, 2.5), col=c("black", "red", "blue"), bty=border)
}

# Run code
imported_data <- import_data_range(raw_data_path, start_date, end_date)
png(filename=figure_3_path, width=480, height=480)
plot_energy_sub_metering_versus_time(imported_data)
dev.off()
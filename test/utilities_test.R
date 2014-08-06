# -----------------------------------------------------------------------------------------------
#
#   File: utilities_test.R
#   Author: Fredrick Stakem
#   Created: 8.5.14
#
#   Purpose: The purpose of this code is for testing the utlity functions needed for project 1
#            in the Coursera class 'Exploratory Data Analysis' from John Hopkins
#
# -----------------------------------------------------------------------------------------------

# Libraries
library('RUnit')

# Source
source('../src/utlities.R')

test_import_data_range <- function()
{
    path <- ""
    start <- ""
    end <- ""
    data <- import_data_range(path, start, end)
}
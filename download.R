# download and unzip the dataset
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zip <- "household_power_consumption.zip"
file <- "household_power_consumption.txt"
if (!file.exists(zip)) download.file(url, zip, method = 'curl')
if (!file.exists(file)) unzip(zip)

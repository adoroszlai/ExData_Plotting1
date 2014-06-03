source('clean_data.R')

# plot 1
png('plot1.png', width = 480, height = 480)
hist(df$global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()

source('clean_data.R')

# plot 2
png('plot2.png', width = 480, height = 480)
plot(df$datetime, df$global_active_power, type = 'l', xlab = '', ylab = 'Global Active Power (kilowatts)')
dev.off()

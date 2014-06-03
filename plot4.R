source('clean_data.R')

# plot 4
png('plot4.png', width = 480, height = 480)
par(mfcol = c(2,2))

# top left
plot(df$datetime, df$global_active_power, type = 'l', xlab = '', ylab = 'Global Active Power')

# bottom left
plot(df$datetime, df$sub_metering_1, type = 'l', col = 'black', xlab = '', ylab = 'Energy sub metering')
lines(df$datetime, df$sub_metering_2, col = 'red')
lines(df$datetime, df$sub_metering_3, col = 'blue')
legend('topright', lwd = 1, bty = 'n', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))

# top right
plot(df$datetime, df$voltage, type = 'l', xlab = 'datetime', ylab = 'Voltage')

# bottom right
plot(df$datetime, df$global_reactive_power, type = 'l', xlab = 'datetime', ylab = 'Global_reactive_power')

dev.off()

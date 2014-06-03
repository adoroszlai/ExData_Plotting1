source('clean_data.R')

# plot 3
png('plot3.png', width = 480, height = 480)
plot(df$datetime, df$sub_metering_1, type = 'l', col = 'black', xlab = '', ylab = 'Energy sub metering')
lines(df$datetime, df$sub_metering_2, col = 'red')
lines(df$datetime, df$sub_metering_3, col = 'blue')
legend('topright', lwd = 1, col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
dev.off()

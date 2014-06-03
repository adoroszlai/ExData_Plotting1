source('download.R')

# load required subset (2007-02-01 - 2007-02-02)

# $ grep -m1 -n '^1/2/2007;' household_power_consumption.txt
# 66638:1/2/2007;00:00:00;0.326;0.128;243.150;1.400;0.000;0.000;0.000
skip_rows = 66637

df <- read.table(file, header = F, sep = ';', quote = '', comment.char = '', na.strings = '?',
    skip = skip_rows,
    nrows = 2 * 24 * 60, # 2 days
    colClasses = c('character', 'character', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric')
)

# header was skipped, so need to add column names manually
colnames(df) <- c('date', 'time', 'global_active_power', 'global_reactive_power', 'voltage', 'global_intensity', 'sub_metering_1', 'sub_metering_2', 'sub_metering_3')

# combine date&time
df$datetime <- strptime(paste(df$date, df$time), format = '%d/%m/%Y %H:%M:%S')

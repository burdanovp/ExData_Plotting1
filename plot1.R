df <- read.csv("household_power_consumption.txt", sep=';', na.strings="?")
df <- df[df$Date == "1/2/2007" | df$Date == "2/2/2007",]
df$datetime = strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
png("plot1.png")
with(df, hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)"))
dev.off()

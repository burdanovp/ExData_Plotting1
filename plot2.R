df <- read.csv("household_power_consumption.txt", sep=';', na.strings="?")
df <- df[df$Date == "1/2/2007" | df$Date == "2/2/2007",]
df$datetime = strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
png("plot2.png")
Sys.setlocale("LC_TIME", "English")
with(df, plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
Sys.setlocale("LC_TIME", "")
dev.off()

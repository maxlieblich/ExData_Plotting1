library(data.table)

DT <- fread("household_power_consumption.txt", na.strings="?")
DD <- DT[Date == "1/2/2007" | Date == "2/2/2007",]
DF <- data.frame(DD)
DF$date.time <- strptime(paste(DF$Date, DF$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png(file = "plot2.png")
plot(DF$date.time, df$Global_active_power, ylab="Global active power (kilowatts)", xlab=NA, type="l")
dev.off()

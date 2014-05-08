library(data.table)

DT <- fread("household_power_consumption.txt", na.strings="?")
DD <- DT[Date == "1/2/2007" | Date == "2/2/2007",]
DF <- data.frame(DD)
DF$date.time <- strptime(paste(DF$Date, DF$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png(file = "plot3.png")
plot(df$date.time, df$Sub_metering_1, ylab="Energy sub metering", xlab=NA, type="l")
lines(df$date.time, df$Sub_metering_2, col="red")
lines(df$date.time, df$Sub_metering_3, col="blue")
legend("topright", lty=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"))
dev.off()

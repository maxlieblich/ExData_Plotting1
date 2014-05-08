library(data.table)

DT <- fread("household_power_consumption.txt", na.strings="?")
DD <- DT[Date == "1/2/2007" | Date == "2/2/2007",]
DF <- data.frame(DD)

png(file = "plot1.png")
hist(as.numeric(DF$Global_active_power), col="red", xlab="Global active power (kilowatts)", main="Global Active Power")
dev.off()

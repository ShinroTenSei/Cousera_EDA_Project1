Housedata <- as.data.frame(read.table("household_power_consumption.txt",
                                      header = TRUE,sep = ";",
                                      stringsAsFactors = FALSE, 
                                      dec ='.'))
subsetdata <- subset(Housedata, Housedata$Date %in% c("1/2/2007","2/2/2007"))
datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
GlobalActivePower <- subsetdata$Global_active_power
GlobalActivePower <- as.numeric(GlobalActivePower)
png("plot2.png",width = 480,height = 480)
plot(datetime,GlobalActivePower,type="l",xlab = "",ylab = "Global Active Power (kilowatts)")
dev.off()
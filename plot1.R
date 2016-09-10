Housedata <- as.data.frame(read.table("household_power_consumption.txt",
                                      header = TRUE,sep = ";",
                                      stringsAsFactors = FALSE, 
                                      dec ='.'))
subsetdata <- subset(Housedata, Housedata$Date %in% c("1/2/2007","2/2/2007"))
GlobalActivePower <- subsetdata$Global_active_power
GlobalActivePower <- as.numeric(GlobalActivePower)
png(file = "plot1.png",width = 480, height = 480)
hist(GlobalActivePower,col="red",main="Global Active Power",xlab ="Global Active Power (kilowatts)")
dev.off()
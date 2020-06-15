
# creating Figure 2

plot(data1$Global_active_power~data1$dateTime,col="black",type="l",xlab="",
     main = "Global Active Power",ylab = "Global Active Power (kilowatts)")

dev.copy(png,"plot2.png",width=480,height=480)
dev.off()

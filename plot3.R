

# creating Figure 3

par(mfrow=c(1,1),mar=c(5.1, 4.1, 4.1, 2.1))
with(data1, {
  plot(Sub_metering_1~dateTime, type="l",
       ylab="Energy Sub-Metering", xlab="")
  lines(Sub_metering_2~dateTime,col='Red')
  lines(Sub_metering_3~dateTime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


dev.copy(png,"plot3.png",width=480,height=480)
dev.off()
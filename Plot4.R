

# creating Figure 4

par(mfrow=c(2,2),mar=c(4,4,2,1),oma=c(0,0,2,0))
with(data1,{
  plot(Global_active_power~dateTime,type="l",ylab = "Global Acative Power (kw)",xlab="")
  plot(Voltage~dateTime,type="l",ylab = "Votage (volt)",xlab="Date & Time")
  plot(Sub_metering_1~dateTime,type="l",ylab = "Energy Sub-Metering",xlab="")
  lines(Sub_metering_2~dateTime,type="l",ylab = "Energy Sub-Metering",xlab="",col="red")
  lines(Sub_metering_3~dateTime,type="l",ylab = "Energy Sub-Metering",xlab="",col="blue")
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power~dateTime,type="l",ylab = "Global Reactive Power (kw)",xlab="Date & Time")
})

dev.copy(png,"plot4.png",width=480,height=480)
dev.off()
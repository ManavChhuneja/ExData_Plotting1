par(mfrow=c(2,2))

plot(final_data$dateTime, final_data$Global_active_power, type = "l", 
     ylab = "Global Active Power", xlab = "")


plot(final_data$dateTime, final_data$Voltage, type = "l", 
     ylab = "Voltage", xlab = "datetime")

plot(final_data$dateTime, final_data$Sub_metering_1, type = "l", col = "black", 
     xlab = "", 
     ylab = "Energy sub metering")


lines(final_data$dateTime, 
      final_data$Sub_metering_2, 
      col = "red")

lines(final_data$dateTime, 
      final_data$Sub_metering_3, 
      col = "blue")


legend("topright", 
       legend = c("Sub Metering 1", "Sub Metering 2", "Sub Metering 3"), 
       col = c("black", "red", "blue"), 
       lty ="solid")

plot(final_data$dateTime, final_data$Global_reactive_power, type = "l", 
     ylab = "Global Reactive Power", xlab = "datetime")


dev.copy(png, file = "plot4.png")
dev.off()
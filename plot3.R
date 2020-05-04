plot(final_data$dateTime, 
     final_data$Sub_metering_1, 
     type = "l", 
     col = "black", 
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

dev.copy(png, file = "plot3.png")
dev.off()
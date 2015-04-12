## Separate screen into 2 rows and 2 colums for 4 graphs fit
## Set top spacing
## Set margin

par(mfrow = c(2,2))
par(oma = c(0,0,2,0))
par(mar=c(4,4,2,1)+.1)

## Apply function over entire dataset
## plot

with(data, {
  #plot 1
  plot(Global_active_power ~ Datetime, type = "l", 
       ylab = "Global Active Power", xlab = "")
  #plot 2
  plot(Voltage ~ Datetime, type = "l", ylab = "Voltage", xlab = "datetime")
  #plot 3
  plot(Sub_metering_1 ~ Datetime, type = "l", ylab = "Energy sub metering",
       xlab = "")
  lines(Sub_metering_2 ~ Datetime, col = 'Red')
  lines(Sub_metering_3 ~ Datetime, col = 'Blue')
  legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
         bty = "n",
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  #plot 4
  plot(Global_reactive_power ~ Datetime, type = "l", 
       ylab = "Global Reactive Power", xlab = "datetime")
})
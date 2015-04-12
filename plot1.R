## read file and subset
## grep searches for pattern match and returns position

file <- file("household_power_consumption.txt")
hpcTab <- read.table(text = grep("^[1,2]/2/2007",
                      readLines(file), value = TRUE), col.names =
                      c("Date", "Time", "Global_active_power", "Global_reactive_power", 
                     "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", 
                     "Sub_metering_3"), sep = ";", header = TRUE)

## plot

hist(hpcTab$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

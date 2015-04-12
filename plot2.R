## Read

hpcTab <- read.csv("household_power_consumption.txt", header = T, sep = ';', 
                      na.strings = "?", nrows = 2075259, check.names = F, 
                      stringsAsFactors = F, comment.char = "", quote = '\"')
hpcTab$Date <- as.Date(hpcTab$Date, format = "%d/%m/%Y")

## Subset

data <- subset(hpcTab, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(hpcTab)

## Converting dates
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

## Generating Plot 2
plot(data$Global_active_power ~ data$Datetime, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")
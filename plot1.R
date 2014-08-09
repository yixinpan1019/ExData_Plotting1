#Load all data...
data <- read.csv("epc.csv", header = T, colClasses = cols, sep = ",")

# Retain only the dates required
data1 <- data [data$Date %in% c("1/2/2007","2/2/2007") ,]

# Open tha PNG file
png("plot1.png", height = 480, width = 480)

# Write a histogram on the device
hist(data$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

# Close the device 
dev.off()

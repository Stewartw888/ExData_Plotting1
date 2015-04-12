plotdata <- read.csv("data.txt",sep=";",dec=".",na.strings = "?",
        colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
)

data <- plotdata[(plotdata$Date == "1/2/2007" | plotdata$Date == "2/2/2007"), ]

png(filename = "plot1.png", width = 480, height = 480)

hist(data$Global_active_power, col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

dev.off()
library(lubridate)
library(readr)
library(tidyverse)
household_power_consumption <- read_delim("~/Downloads/household_power_consumption.txt", 
                                          ";", escape_double = FALSE, trim_ws = TRUE, na = c("?", NA))


data <- household_power_consumption %>%
  mutate(Date = as.Date(Date, format = "%d/%m/%Y")) %>%
  filter(Date %in% as.Date(c("2007-02-01", "2007-02-02")))


dateTime <- strptime(paste(data$Date, data$Time, sep = " "), format = "%Y-%m-%d %H:%M:%S")

final_data <- cbind(data, dateTime) %>%
  select(Global_active_power:dateTime)

rm("household_power_consumption")

plot(final_data$dateTime, final_data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file = "plot2.png")
dev.off()

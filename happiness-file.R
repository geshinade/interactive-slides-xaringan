## @knitr Code
library(rio)
library(tidyverse)
library(lubridate)
library(tinytex)

install.packages("timetk")


# Load the data

flight_data <- import("flight_delays.csv")
View(flight_data)


delays_bplot <- flight_data %>% 
  ggplot(aes(x = Month, y = NK, fill = Month)) +
  geom_bar(stat="identity")+
  scale_x_discrete(limits = factor(1:12), labels = month.abb)+
  labs(x = "Month",
       y = "Arrival delay (in minutes)",
       title = "Average Arrival Delay for Spirit Airlines Flights, by Month")


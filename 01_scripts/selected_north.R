# This script selects stations from headwater_100UBA.csv that are in the Northern
# hemisphere and export it to another .csv file, "headwater_100UBA_north.csv" to
# the folder 02_outdata.

# Load necessary library
library(dplyr)

# Read the CSV file
input_data <- read.csv("~/CIEEintern/PR/LDP/00_rawdata/headwater_100UBA.csv")

# Filter rows where latitude is greater than or equal to 0
filtered_data <- input_data %>% filter(Latitude >= 0)

# Write the filtered data to a new CSV file
write.csv(filtered_data, "~/CIEEintern/PR/LDP/02_outdata/headwater_100UBA_north.csv", row.names = FALSE)

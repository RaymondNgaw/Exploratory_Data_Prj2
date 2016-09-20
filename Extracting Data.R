#Download file and read data as well as merge information
fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
download.file(fileurl, destfile = "~/GitHub/Exploratory_Data_Prj2.zip", mode = "wb")
unzip(zipfile = "~/GitHub/Exploratory_Data_Prj2.zip", exdir = "~/GitHub/Exploratory_Data_Prj2")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
NS <- merge(NEI, SCC, by = "SCC")

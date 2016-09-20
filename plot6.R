#Compare emissions from motor vehicle sources in Baltimore City with emissions  
#from motor vehicle sources in Los Angeles County, California (fips == "06037"). 
#Which city has seen greater changes over time in motor vehicle emissions?

#library(ggplot2) should already be loaded
#Extract Baltimore and Los Angeles On-Road data
BLA <- NEI[(NEI$fips == "24510" | NEI$fips == "06037") & NEI$type == "ON-ROAD",  ]

z <- aggregate(Emissions ~ year + fips, BLA, sum)
z$fips[z$fips == "24510"] <- "Baltimore, MD"
z$fips[z$fips == "06037"] <- "Los Angeles, CA"

png("plot6.png")

g <- ggplot(z, aes(factor(year), Emissions, color = fips)) + 
  geom_line(aes(group = fips))  + geom_point() +
  labs(x = "Year", y = "PM2.5 Emissions",
       title = "Baltimore and L.A. Triannual Motor Emissions")
g + theme_bw()

dev.off()

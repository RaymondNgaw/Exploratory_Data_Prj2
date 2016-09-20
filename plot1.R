#Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
#Using the base plotting system, make a plot showing the total PM2.5 emission from 
#all sources for each of the years 1999, 2002, 2005, and 2008.

#Gather necessary data and aggregate the Emissions of each corresponding year
agy <- aggregate(Emissions ~ year, NEI, sum)

#Plot 
png("plot1.png")

plot(agy, xlab = "Year", ylab = "PM2.5 Emission", 
     main = "Triannual Total PM2.5 Emissions",
     type = "b", col = "blue", pch = 19, lwd = 1, lty = 1,
     panel.first = grid(lty = 7))

dev.off()

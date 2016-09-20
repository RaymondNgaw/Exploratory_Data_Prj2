#Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? 
#Use the base plotting system to make a plot answering this question.

#Extract Baltimore City
Balt  <- NEI[NEI$fips=="24510", ]

#Extract Emissions of Baltimore City
agys <- aggregate(Emissions ~ year, Balt, sum)

png("plot2.png")

plot(agys, xlab = "Year", ylab = "PM2.5 Emission" ,
     main = "Baltimore, MD's Triannual PM2.5 Emissions",
     type = "b", col = "darkcyan", pch = 0, lwd = 3, lty = 1,
     panel.first = grid(lty = 7))

dev.off()

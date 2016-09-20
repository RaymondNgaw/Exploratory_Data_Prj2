#How have emissions from motor vehicle sources changed from 1999-2008 in Baltimore City?

#library(ggplot2) should already be loaded
#Extract Baltimore and On-Road data
onbalt <- NEI[NEI$fips == "24510" & NEI$type == "ON-ROAD",  ]

agroad <- aggregate(Emissions ~ year, onbalt, sum)

png("plot5.png")

g <- ggplot(agroad, aes(factor(year), Emissions, group = 1)) + 
  geom_line(lwd = .5, color = "cadetblue") + geom_point() +
  labs(x = "Year", y = "PM2.5 Emissions", title = "Triannual Motor Emissions in Baltimore, MD")
g + theme_bw()

dev.off()

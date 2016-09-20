#Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

#library(ggplot2) should already be loaded
#Getting data related to coal
x <- grep("coal", NS$Short.Name, ignore.case=TRUE)
coal <- NS[x, ]

agcoal <- aggregate(Emissions ~ year, coal, sum)

png("plot4.png")

g <- ggplot(agcoal, aes(factor(year), Emissions, group = 1)) + 
  geom_line(color = "cadetblue", lwd = .7) + geom_point() +
  labs(x = "year", y = "PM2.5 Emissions", title = "Triannual Coal Emissions")
g +  theme_bw()

dev.off()

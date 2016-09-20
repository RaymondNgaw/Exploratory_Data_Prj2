#Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, 
#which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? 
#Which have seen increases in emissions from 1999–2008? 
#Use the ggplot2 plotting system to make a plot answer this question.

library(ggplot2)

#Extract year and type from Baltimore
agyst <- aggregate(Emissions ~ year + type, Balt, sum)

png("plot3.png")

g <- ggplot(agyst, aes(factor(year), Emissions, group = 1)) + geom_line(color = "cadetblue", lwd = .5) +
  facet_wrap( ~ type) + geom_point() +
  labs(x = "Year", y = "PM2.5 Emissions",
       title ="Triannual Type Emmisions of Baltimore, MD") 
g + theme_bw()

dev.off()


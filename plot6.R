source("load_data.R")
library(plyr)
library(ggplot2)

subset <- NEI[NEI$fips == "24510"|NEI$fips == "06037", ]

motor <- grep("motor", SCC$Short.Name, ignore.case = T)
temp=SCC[motor ,]
temp = subset[subset$SCC %in% temp$SCC, ]

png(filename = "plot6.png",width = 480,height = 480,units = "px" )
g <- ggplot(temp, aes(year, Emissions, color = fips))
g1=g + geom_line(stat = "summary", fun.y = "sum") +
        ylab(expression('Total PM'[2.5]*" Emissions")) +
        ggtitle("Comparison of Total Emissions From Motor\n Vehicle Sources in Baltimore City\n and Los Angeles County from 1999 to 2008") +
        scale_colour_discrete(name = "Group", label = c("Los Angeles","Baltimore"))
print(g1)
dev.off()


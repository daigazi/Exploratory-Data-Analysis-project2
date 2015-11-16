source("load_data.R")
library(ggplot2)
library(plyr)
Maryland=NEI[NEI$fips=="24510",] # maryland city data
png(filename = "plot3.png",width = 480,height = 480,units = "px" )
g <- ggplot(Maryland, aes(year, Emissions, color = type))
g1=g + geom_line(stat = "summary", fun.y = "sum") +
        ylab(expression('Total PM'[2.5]*" Emissions")) +
        ggtitle("Total Emissions in Baltimore City from 1999 to 2008")
print(g1)
dev.off()







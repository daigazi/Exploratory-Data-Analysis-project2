source("load_data.R")
library(plyr)
tmp=ddply(.data = NEI,.variables = .(year),summarize,Emi=sum(Emissions))
#tmp=tapply(NEI$Emissions,NEI$year,sum)
png(filename = "plot1.png",width = 480,height = 480,units = "px" )
plot(tmp,type="l",xlab="Year",
     main="Total Emissions in the United States from 1999 to 2008",
     ylab = expression('Total PM'[2.5]*" Emission"))
dev.off()
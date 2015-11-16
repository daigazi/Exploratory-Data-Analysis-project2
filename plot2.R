source("load_data.R")
library(plyr)
Maryland=NEI[NEI$fips=="24510",] # maryland city data
tmp=ddply(.data = Maryland,.variables = .(year),summarize,Emi=sum(Emissions))
png(filename = "plot2.png",width = 480,height = 480,units = "px" )
plot(tmp,type="l",xlab="Year",
     main="Total Emissions in the maryland from 1999 to 2008",
     ylab = expression('Total PM'[2.5]*" Emission"))
dev.off()

source("load_data.R")
library(plyr)
motor <- grep("motor", SCC$Short.Name, ignore.case = T)
temp=SCC[motor ,]
temp = NEI[NEI$SCC %in% temp$SCC, ]
#temp=merge(x=temp,y=NEI,by.x = "SCC",by.y = "SCC",all.x = T)
tmp1=ddply(.data = temp,.variables = .(year),summarize,Emi=sum(Emissions))
png(filename = "plot5.png",width = 480,height = 480,units = "px" )
plot(tmp1, type = "l", xlab = "Year", 
     main = "Total Emissions From Coal Combustion-related\n Sources from 1999 to 2008", 
     ylab = expression('Total PM'[2.5]*" Emission"))
dev.off()




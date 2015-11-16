# unzip file to exdir 
unzip("./data/exdata-data-NEI_data.zip",exdir = "./data")
# Check if both data exist. If not, load the data.
if (!"NEI" %in% ls()) {
    NEI<- readRDS("./data/summarySCC_PM25.rds")
}
if (!"sccData" %in% ls()) {
    SCC <- readRDS("./data/Source_Classification_Code.rds")
}
head(NEI)
head(SCC)
dim(NEI) 
dim(SCC) 


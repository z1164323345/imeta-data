library(d3Network)
sankey <- read.table("D:/zhuangyimin/Rroute/sangjiyuce.txt",header = TRUE, sep = "\t")
nodes <- data.frame(name = unique(c(as.character(sankey$source),as.character(sankey$target))),stringsAsFactors = FALSE)
nodes$ID <- 0:(nrow(nodes)-1)
sankey <- merge(sankey,nodes,by.x = "source",by.y = "name")
sankey <- merge(sankey,nodes,by.x = "target",by.y = "name")
colnames(sankey) <- c("X","Y","value","source","target")
sankey <- subset(sankey,select = c("source","target","value"))
nodes <- subset(nodes,select = c("name"))
dev.new()
a<- d3Sankey(Links = sankey,Nodes = nodes,fontsize = 20,
             Source = "source",Target = "target",Value = "value",
             NodeID = "name",file = "Sankey3.html",
             width = 1500,height = 800)
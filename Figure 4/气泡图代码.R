try<- read.table("D:/zhuangyimin/Rroute/duniuageqipao.txt",header = T)  
library("ggplot2")

cols <- c(
  "Africa" = "#34a186",
  "Americas" = "#f9cb45",
  "Asia" = "#b5182b",
  "Europe" = "#4cb1c4",
  "Oceania" = "#ab96d2"
)

library(viridis)

dev.new()
ggplot(try, aes(x = group, y = genus, ,color=genus,size = value)) + geom_point()+scale_color_viridis(discrete=TRUE, option="D")+
  theme(panel.background = element_blank(),              #背景
        panel.grid.major = element_line(colour = "white"),          #网格线
        panel.border = element_rect(colour="black",fill=NA))+scale_size(range = c(2, 15),breaks=c(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8), limits=c(0.00000001,0.8))            #边框
#注意group的顺路错乱，用英文ABC。。。正常
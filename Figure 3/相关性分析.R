body2<- read.csv("D:/zhuangyimin/Rroute/cardfamily.csv",row.names = 1, header = T)  
attach(body2)
cov_spearman <- cov(body2, method = 'spearman')
cor_spearman <- cor(body2, method = 'spearman')
library(psych)
dat_BH <- body2[1:10]
dat_TC <- body2[11:19]
BH_TC_corr <- corr.test(dat_BH, dat_TC, method = 'spearman',adjust = "BH")
library(corrplot)
dev.new()
corrplot(BH_TC_corr$r, p.mat = BH_TC_corr$p, method = 'color', col = colorRampPalette(c("#eeecdf", "#becdd2", "#6f9ad1", "#44679f", "#3f4f71")),insig = 'blank', sig.level = 0.05,addCoef.col = 'red', number.cex = 0.8, tl.cex = 0.8)
#加上显著性标示版本
corrplot(BH_TC_corr$r,p.mat = BH_TC_corr$p,insig = 'label_sig', sig.level = c(.001, .01, .05), pch.cex = .9, pch.col = 'black',number.cex = 0.8, tl.cex = 0.8)
#改变颜色
corrplot(BH_TC_corr$r,p.mat = BH_TC_corr$p,  col = colorRampPalette(c("#eeecdf", "#becdd2", "#6f9ad1", "#44679f", "#3f4f71"))(20),insig = 'label_sig', method = 'color',sig.level = c(.001, .01, .05), pch.cex = 1.5,tl.col='black',number.cex = 0.8, tl.cex = 0.8)
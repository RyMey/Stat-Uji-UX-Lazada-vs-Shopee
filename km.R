km <- read.csv("/Users/macbookair/Documents/Data\ Scientists/LazadaVsShopee/km.csv",header = TRUE, sep = ",")
selisih1 <- km[,1]-km[,2]
qqnorm(selisih1)
qqline(selisih1)
t.test(km[,1],km[,2],alternative = "two.sided",paired = TRUE)

ls <- read.csv("~/Documents/IPB-Laptop/MPTP/shopee_vs_lazada.csv",header = TRUE, sep = ",")
ls <- ls[,-1]
selisih2 <- ls[,1]-ls[,2]
qqnorm(selisih2)
qqline(selisih2)
t.test(ls[,1],ls[,2],alternative = "two.sided",paired = TRUE)
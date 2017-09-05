library(rcompanion)
#test overall
data_both <- read.csv("/Users/macbookair/Documents/Data\ Scientists/LazadaVsShopee/lazadaVsShopee.csv",header = TRUE, sep = ",")
# cek normalisasi dan transform data lazada
  #lazada
plotNormalHistogram(data_both$Lazada)
    #transform t^2
T_2_1 = data_both$Lazada*data_both$Lazada
plotNormalHistogram(T_2_1)
   #transform t^3
T_3_1 = data_both$Lazada*data_both$Lazada*data_both$Lazada
plotNormalHistogram(T_3_1)
   #move
data_both$Lazada <- T_3_1

  #Shopee
plotNormalHistogram(data_both$Shopee)
    #transform t^2
T_2_2 = data_both$Shopee*data_both$Shopee
plotNormalHistogram(T_2_2)
    #transform t^3
T_3_2 = data_both$Shopee*data_both$Shopee*data_both$Shopee
plotNormalHistogram(T_3_2)
    #transform t^4
T_4_2 = data_both$Shopee*data_both$Shopee*data_both$Shopee*data_both$Shopee
plotNormalHistogram(T_4_2)
    #move
data_both$Shopee<- T_4_2

t.test(data_both$Lazada,data_both$Shopee,alternative = "two.sided",paired = TRUE)
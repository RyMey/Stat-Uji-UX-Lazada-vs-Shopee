lazada_aspek <- read.csv("~/Documents/IPB-Laptop/MPTP/lazada_aspek.csv",header = TRUE, sep = ",")
# tranformasi data lazada
library(rcompanion)
plotNormalHistogram(lazada_aspek$kemudahan_navigasi)
T_2 = lazada_aspek$kemudahan_navigasi*lazada_aspek$kemudahan_navigasi
plotNormalHistogram(T_2)
T_3 = lazada_aspek$kemudahan_navigasi*lazada_aspek$kemudahan_navigasi*lazada_aspek$kemudahan_navigasi
plotNormalHistogram(T_3)
lazada_aspek$kemudahan_navigasi <- T_3


library(rcompanion)
shopee_aspek <- read.csv("~/Documents/IPB-Laptop/MPTP/shopee_aspek.csv",header = TRUE, sep = ",")

# cek normalisasi dan transform data shopee
  #fitur 1
    #cek normalisasi
plotNormalHistogram(shopee_aspek$kemudahan_navigasi)
    #transform t^2
T_2_1 = shopee_aspek$kemudahan_navigasi*shopee_aspek$kemudahan_navigasi
plotNormalHistogram(T_2_1)
    #transform t^3
T_3_1 = shopee_aspek$kemudahan_navigasi*shopee_aspek$kemudahan_navigasi*shopee_aspek$kemudahan_navigasi
plotNormalHistogram(T_3_1)
    #move t^3 to feature 1  
shopee_aspek$kemudahan_navigasi <- T_3_1

  #fitur 2
plotNormalHistogram(shopee_aspek$atraktif_desain)
  #transform t^2
T_2_2 = shopee_aspek$atraktif_desain*shopee_aspek$atraktif_desain
plotNormalHistogram(T_2_2)
  #move t^2 to feature 2
shopee_aspek$atraktif_desain <- T_2_2

  #fitur 3
plotNormalHistogram(shopee_aspek$mudah_digunakan)
    #transform t^2
T_2_3 = shopee_aspek$mudah_digunakan*shopee_aspek$mudah_digunakan
plotNormalHistogram(T_2_3)
  #move t^2 to feature 3  
shopee_aspek$mudah_digunakan <- T_2_3

  #fitur 4
plotNormalHistogram(shopee_aspek$fitur_berfungsi)
    #transform t^2
T_2_4 = shopee_aspek$fitur_berfungsi*shopee_aspek$fitur_berfungsi
plotNormalHistogram(T_2_4)
    #transform t^3
T_3_4 = shopee_aspek$fitur_berfungsi*shopee_aspek$fitur_berfungsi*shopee_aspek$fitur_berfungsi
plotNormalHistogram(T_3_4)
    #move t^3 to feature 4
shopee_aspek$fitur_berfungsi <- T_3_4

  #fitur 5
plotNormalHistogram(shopee_aspek$antarmuka_jelas_dan_menarik)
    #transform t^2
T_2_5 = shopee_aspek$antarmuka_jelas_dan_menarik*shopee_aspek$antarmuka_jelas_dan_menarik
plotNormalHistogram(T_2_5)
    #move t^2 to feature 5
shopee_aspek$antarmuka_jelas_dan_menarik <- T_2_5

  #fitur 6
plotNormalHistogram(shopee_aspek$mudah_dipelajari)
    #transform t^2
T_2_6 = shopee_aspek$mudah_dipelajari*shopee_aspek$mudah_dipelajari
plotNormalHistogram(T_2_6)
    #transform t^3
T_3_6 = shopee_aspek$mudah_dipelajari*shopee_aspek$mudah_dipelajari*shopee_aspek$mudah_dipelajari
plotNormalHistogram(T_3_6)
    #move t^3 to feature 6
shopee_aspek$mudah_dipelajari <- T_3_6

  #fitur 7
plotNormalHistogram(shopee_aspek$efisien)

  #fitur 8
plotNormalHistogram(shopee_aspek$akses_standar)
  #transform t^2
T_2_8 = shopee_aspek$akses_standar*shopee_aspek$akses_standar
plotNormalHistogram(T_2_8)
  #move t^2 to feature 8
shopee_aspek$akses_standar <- T_2_8

  #fitur 9
plotNormalHistogram(shopee_aspek$mudah_diingat)
    #transform t^2
T_2_9 = shopee_aspek$mudah_diingat*shopee_aspek$mudah_diingat
plotNormalHistogram(T_2_9)
    #transform t^3
T_3_9 = shopee_aspek$mudah_diingat*shopee_aspek$mudah_diingat*shopee_aspek$mudah_diingat
plotNormalHistogram(T_3_9)

  #fitur 10
plotNormalHistogram(shopee_aspek$keamanan)
    #transform t^2
T_2_10 = shopee_aspek$keamanan*shopee_aspek$keamanan
plotNormalHistogram(T_2_10)
    #move t^2 to feature 8
shopee_aspek$keamanan <- T_2_10

  #fitur 11
plotNormalHistogram(shopee_aspek$bantuan_dan_dukungan)
    #transform t^2
T_2_11 = shopee_aspek$bantuan_dan_dukungan*shopee_aspek$bantuan_dan_dukungan
plotNormalHistogram(T_2_11)
  #move t^2 to feature 11
shopee_aspek$bantuan_dan_dukungan <- T_2_11

  #fitur 12
plotNormalHistogram(shopee_aspek$kepuasan_dan_kesan)
    #transform t^2
T_2_12 = shopee_aspek$kepuasan_dan_kesan*shopee_aspek$kepuasan_dan_kesan
plotNormalHistogram(T_2_12)
  #transform t^3
T_3_12 = shopee_aspek$kepuasan_dan_kesan*shopee_aspek$kepuasan_dan_kesan*shopee_aspek$kepuasan_dan_kesan
plotNormalHistogram(T_3_12)
  #move t^3 to feature 12
shopee_aspek$kepuasan_dan_kesan <- T_3_12

write.csv(shopee_aspek, "/Users/macbookair/Documents/Data\ Scientists/LazadaVsShopee/shopee.csv")
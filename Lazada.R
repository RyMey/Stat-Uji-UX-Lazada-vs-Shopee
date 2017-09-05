library(rcompanion)
lazada_aspek <- read.csv("~/Documents/IPB-Laptop/MPTP/lazada_aspek.csv",header = TRUE, sep = ",")
# cek normalisasi dan transform data lazada
  #fitur 1
    #cek normalisasi
plotNormalHistogram(lazada_aspek$kemudahan_navigasi)
    #transform t^2
T_2_1 = lazada_aspek$kemudahan_navigasi*lazada_aspek$kemudahan_navigasi
plotNormalHistogram(T_2_1)
    #transform t^3
T_3_1 = lazada_aspek$kemudahan_navigasi*lazada_aspek$kemudahan_navigasi*lazada_aspek$kemudahan_navigasi
plotNormalHistogram(T_3_1)
    #move t^3 to feature 1  
lazada_aspek$kemudahan_navigasi <- T_3_1

  #fitur 2
plotNormalHistogram(lazada_aspek$atraktif_desain)

  #fitur 3
plotNormalHistogram(lazada_aspek$mudah_digunakan)
    #transform t^2
T_2_3 = lazada_aspek$mudah_digunakan*lazada_aspek$mudah_digunakan
plotNormalHistogram(T_2_3)
    #transform t^3
T_3_3 = lazada_aspek$mudah_digunakan*lazada_aspek$mudah_digunakan*lazada_aspek$mudah_digunakan
plotNormalHistogram(T_3_3)
    #move t^3 to feature 3 
lazada_aspek$mudah_digunakan <- T_3_3

  #fitur 4
plotNormalHistogram(lazada_aspek$fitur_berfungsi)
    #transform t^2
T_2_4 = lazada_aspek$fitur_berfungsi*lazada_aspek$fitur_berfungsi
plotNormalHistogram(T_2_4)
    #transform t^3
T_3_4 = lazada_aspek$fitur_berfungsi*lazada_aspek$fitur_berfungsi*lazada_aspek$fitur_berfungsi
plotNormalHistogram(T_3_4)
    #move t^3 to feature 3
lazada_aspek$fitur_berfungsi <- T_3_4
  
  #fitur 5
plotNormalHistogram(lazada_aspek$antarmuka_jelas_dan_menarik)

  #fitur 6
plotNormalHistogram(lazada_aspek$mudah_dipelajari)

  #fitur 7
plotNormalHistogram(lazada_aspek$efisien)

  #fitur 8
plotNormalHistogram(lazada_aspek$akses_standar)
    #transform t^2
T_2_8 = lazada_aspek$akses_standar*lazada_aspek$akses_standar
plotNormalHistogram(T_2_8)
  #move t^2 to feature 8
lazada_aspek$akses_standar <- T_2_8
  
  #fitur 9
plotNormalHistogram(lazada_aspek$mudah_diingat)

  #fitur 10
plotNormalHistogram(lazada_aspek$keamanan)
    #transform t^2
T_2_10 = lazada_aspek$keamanan*lazada_aspek$keamanan
plotNormalHistogram(T_2_10)
    #move t^2 to feature 8
lazada_aspek$keamanan <- T_2_10

  #fitur 11
plotNormalHistogram(lazada_aspek$bantuan_dan_dukungan)
  #transform t^2
T_2_11 = lazada_aspek$bantuan_dan_dukungan*lazada_aspek$bantuan_dan_dukungan
plotNormalHistogram(T_2_11)
  #move t^2 to feature 11
lazada_aspek$bantuan_dan_dukungan <- T_2_11

  #fitur 12
plotNormalHistogram(lazada_aspek$kepuasan_dan_kesan)
  #transform t^2
T_2_12 = lazada_aspek$kepuasan_dan_kesan*lazada_aspek$kepuasan_dan_kesan
plotNormalHistogram(T_2_12)
  #transform t^3
T_3_12 = lazada_aspek$kepuasan_dan_kesan*lazada_aspek$kepuasan_dan_kesan*lazada_aspek$kepuasan_dan_kesan
plotNormalHistogram(T_3_12)
  #move t^3 to feature 12
lazada_aspek$kepuasan_dan_kesan <- T_3_12

write.csv(lazada_aspek, "/Users/macbookair/Documents/Data\ Scientists/LazadaVsShopee/lazada.csv")
shopee <- read.csv("~/Documents/IPB-Laptop/MPTP/shopee_aspek.csv",header = TRUE, sep = ",")
lazada <- read.csv("~/Documents/IPB-Laptop/MPTP/lazada_aspek.csv",header = TRUE, sep = ",")
profesi <- read.csv("/Users/macbookair/Documents/Data\ Scientists/LazadaVsShopee/profesi.csv",header = TRUE, sep = ",")

mahasiswa_shopee <- shopee[which(profesi==1 | profesi==3),]
mahasiswa_lazada <- lazada[which(profesi==1 | profesi==3),]

karyawan_shopee <- shopee[which(profesi==2 | profesi==3),]
karyawan_lazada <- lazada[which(profesi==2 | profesi==3),]


write.csv(mahasiswa_shopee, "/Users/macbookair/Documents/Data\ Scientists/LazadaVsShopee/mahasiswa_s.csv")
write.csv(mahasiswa_lazada, "/Users/macbookair/Documents/Data\ Scientists/LazadaVsShopee/mahasiswa_l.csv")
write.csv(karyawan_shopee, "/Users/macbookair/Documents/Data\ Scientists/LazadaVsShopee/karyawan_s.csv")
write.csv(karyawan_lazada, "/Users/macbookair/Documents/Data\ Scientists/LazadaVsShopee/karyawan_l.csv")

karyawan <- read.csv("/Users/macbookair/Documents/Data\ Scientists/LazadaVsShopee/karyawan.csv",header = TRUE, sep = ",")
mahasiswa <- read.csv("/Users/macbookair/Documents/Data\ Scientists/LazadaVsShopee/mahasiswa.csv",header = TRUE, sep = ",")

selisih <- mahasiswa[,1]-karyawan[,1]
library(rcompanion)
plotNormalHistogram(selisih)
t.test(mahasiswa$kemudahan_navigasi,karyawan$kemudahan_navigasi,alternative = "two.sided",paired = TRUE)


t.test(mahasiswa$atraktif_desain,karyawan$atraktif_desain,alternative = "two.sided",paired = TRUE)
t.test(mahasiswa$mudah_digunakan,karyawan$mudah_digunakan,alternative = "two.sided",paired = TRUE)
t.test(mahasiswa$fitur_berfungsi,karyawan$fitur_berfungsi,alternative = "two.sided",paired = TRUE)
t.test(mahasiswa$antarmuka_jelas_dan_menarik,karyawan$antarmuka_jelas_dan_menarik,alternative = "two.sided",paired = TRUE)
t.test(mahasiswa$mudah_dipelajari,karyawan$mudah_dipelajari,alternative = "two.sided",paired = TRUE)
t.test(mahasiswa$efisien,karyawan$efisien,alternative = "two.sided",paired = TRUE)
t.test(mahasiswa$akses_standar,karyawan$akses_standar,alternative = "two.sided",paired = TRUE)
t.test(mahasiswa$mudah_diingat,karyawan$mudah_diingat,alternative = "two.sided",paired = TRUE)
t.test(mahasiswa$keamanan,karyawan$keamanan,alternative = "two.sided",paired = TRUE)
t.test(mahasiswa$bantuan_dan_dukungan,karyawan$bantuan_dan_dukungan,alternative = "two.sided",paired = TRUE)
t.test(mahasiswa$kepuasan_dan_kesan,karyawan$kepuasan_dan_kesan,alternative = "two.sided",paired = TRUE)
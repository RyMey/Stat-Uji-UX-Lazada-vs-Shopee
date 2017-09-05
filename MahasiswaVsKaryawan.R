shopee <- read.csv("/Users/macbookair/Documents/Data\ Scientists/LazadaVsShopee/shopee.csv",header = TRUE, sep = ",")
lazada <- read.csv("/Users/macbookair/Documents/Data\ Scientists/LazadaVsShopee/lazada.csv",header = TRUE, sep = ",")
profesi <- read.csv("/Users/macbookair/Documents/Data\ Scientists/LazadaVsShopee/profesi.csv",header = TRUE, sep = ",")

mahasiswa <- rbind(shopee[which(profesi==1 | profesi==3),], lazada[which(profesi==1 | profesi==3),])
mahasiswa$X <- NULL
karyawan <- rbind(shopee[which(profesi==2 | profesi==3),], lazada[which(profesi==2 | profesi==3),])
karyawan$X <- NULL

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
library(rcompanion)
karyawan <- read.csv("/Users/macbookair/Documents/Data\ Scientists/LazadaVsShopee/karyawan.csv",header = TRUE, sep = ",")
mahasiswa <- read.csv("/Users/macbookair/Documents/Data\ Scientists/LazadaVsShopee/mahasiswa.csv",header = TRUE, sep = ",")

#1
selisih1 <- mahasiswa[,1]-karyawan[,1]
qqnorm(selisih1)
qqline(selisih1)
t.test(mahasiswa[,1],karyawan[,1],alternative = "two.sided",paired = TRUE)

#2
selisih2 <- mahasiswa[,2]-karyawan[,2]
qqnorm(selisih2)
qqline(selisih2)
t.test(mahasiswa[,2],karyawan[,2],alternative = "two.sided",paired = TRUE)

#3
selisih3 <- mahasiswa[,3]-karyawan[,3]
qqnorm(selisih3)
qqline(selisih3)
t.test(mahasiswa[,3],karyawan[,3],alternative = "two.sided",paired = TRUE)

#4
selisih4 <- mahasiswa[,4]-karyawan[,4]
qqnorm(selisih4)
qqline(selisih4)
t.test(mahasiswa[,4],karyawan[,4],alternative = "two.sided",paired = TRUE)

#5
selisih5 <- mahasiswa[,5]-karyawan[,5]
qqnorm(selisih5)
qqline(selisih5)
t.test(mahasiswa[,5],karyawan[,5],alternative = "two.sided",paired = TRUE)

#6
selisih6 <- mahasiswa[,6]-karyawan[,6]
qqnorm(selisih6)
qqline(selisih6)
t.test(mahasiswa[,6],karyawan[,6],alternative = "two.sided",paired = TRUE)

#7
selisih7 <- mahasiswa[,7]-karyawan[,7]
qqnorm(selisih7)
qqline(selisih7)
t.test(mahasiswa[,7],karyawan[,7],alternative = "two.sided",paired = TRUE)

#8
selisih8 <- mahasiswa[,8]-karyawan[,8]
qqnorm(selisih8)
qqline(selisih8)
t.test(mahasiswa[,8],karyawan[,8],alternative = "two.sided",paired = TRUE)

#9
selisih9 <- mahasiswa[,9]-karyawan[,9]
qqnorm(selisih9)
qqline(selisih9)
t.test(mahasiswa[,9],karyawan[,9],alternative = "two.sided",paired = TRUE)

#10
selisih10 <- mahasiswa[,10]-karyawan[,10]
qqnorm(selisih10)
qqline(selisih10)
t.test(mahasiswa[,10],karyawan[,10],alternative = "two.sided",paired = TRUE)

#11
selisih11 <- mahasiswa[,11]-karyawan[,11]
qqnorm(selisih11)
qqline(selisih11)
t.test(mahasiswa[,11],karyawan[,11],alternative = "two.sided",paired = TRUE)

#12
selisih12 <- mahasiswa[,12]-karyawan[,12]
qqnorm(selisih12)
qqline(selisih12)
t.test(mahasiswa[,12],karyawan[,12],alternative = "two.sided",paired = TRUE)

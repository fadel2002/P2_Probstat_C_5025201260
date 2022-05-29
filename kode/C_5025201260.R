# Fadel Pramaputra Maulana / 5025201260 / Probstat C

#1
#a
Responden = c(1, 2, 3, 4, 5, 6, 7, 8, 9)
x = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y = c(100, 95, 70, 90, 90, 90, 89, 90, 100)

sd(x-y)

#b
t.test(y, x, paired = TRUE)

#c
#H0 : "tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas A"
#Karena p-value < ???? maka H0 ditolak
#Maka kesimpulannya "terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas A"

#2
#a
#Setuju

#b
zsum.test(mean.x = 23500, sigma.x=3900, n.x = 100, mu = 20000, alternative = "greater")

#c
#H0 : ?? <= 20000
#H1 : ?? > 20000
#Karena p-value hampir bernilai nol maka H0 ditolak dan H1 diterima
#Maka kesimpulannya mobil dikemudikan rata rata lebih dari 20.000 km per-tahun
install.packages("mosaic")
library(mosaic)

#3
#a
bandung_mean = 3.64
bandung_sd = 1.67
bandung_n = 19
bali_mean = 2.79
bali_sd = 1.32
bali_n = 27
#H0 = "Rata - rata saham di kota Bandung sama dengan rata rata saham di kota Bali"
#H1 = "Rata - rata saham di kota Bandung tidak sama dengan rata rata saham di kota Bali"

#b
tsum.test(mean.x = bandung_mean, s.x = bandung_sd, n.x = bandung_n, mean.y = bali_mean, s.y = bali_sd, n.y = bali_n, alternative = "two.side", var.equal = TRUE)

#c
batas = qt(p = 0.025, df = 2, lower.tail = FALSE)

#d
s = sqrt(((bandung_n-1)*bandung_sd^2+(bali_n-1)*bali_sd^2)/2)
t_value = (bandung_mean-bali_mean)/(s*sqrt((1/bandung_n)+(1/bali_n)))

#e
#Menolak H0 jika t_value > batas atau t_value < -batas

#f
#Karena nilai t_value berada diantara batas maka H0 diterima
#Maka "Rata - rata saham di kota Bandung sama dengan rata rata saham di kota Bali"
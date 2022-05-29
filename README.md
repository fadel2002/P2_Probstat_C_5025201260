# P2_Probstat_C_5025201260
Nama  : Fadel Pramaputra Maulana

NRP   : 5025201260

Kelas : Probstat C

## Nomer 1
### 1.a

Memasukkan data kedalam variabel vector 

```bash
Responden = c(1, 2, 3, 4, 5, 6, 7, 8, 9)
x = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y = c(100, 95, 70, 90, 90, 90, 89, 90, 100)
```

Mencari standar deviasi dari selisih data

```bash
sd(x-y)
```

Hasil:

![image](https://user-images.githubusercontent.com/72655591/170877481-ab1ee8ba-2026-4918-8461-7eba4cebf861.png)

### 1.b

Mencari p-value

```bash
t.test(y, x, paired = TRUE)
```
Hasil:

![image](https://user-images.githubusercontent.com/72655591/170877544-3e9f008f-870b-4220-ab71-aa493fb70c0e.png)

### 1.c

```bash
H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas A”
```

Karena p-value < 𝛼 maka H0 ditolak, maka kesimpulannya `terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas A1`


## Nomer 2
### 2.a
Setuju

### 2.b

Mencari nilai p-value 

```bash
zsum.test(mean.x = 23500, sigma.x=3900, n.x = 100, mu = 20000, alternative = "greater")
```

Dapat dilihat dari output nilai Z adalah `8.9744`, p-value yang hampir bernilai nol, dan selang kepercayaan berada pada batas bawah `22858.51`

Hasil:

![image](https://user-images.githubusercontent.com/72655591/170878512-71ca9957-8280-42f5-bab3-c5b3792ad724.png)

### 2.c

```bash
H0 : μ <= 20000
H1 : μ > 20000
```

Dari p-value yang didapat `p-value ~ 0` maka H0 ditolak dan H1 diterima, maka kesimpulannya `mobil dikemudikan rata rata lebih dari 20.000 km per-tahun`

## Nomer 3
### 3.a

Pembuatan hipotesis nol dan alternatif:

```bash
H0 = "Rata - rata saham di kota Bandung sama dengan rata rata saham di kota Bali"
H1 = "Rata - rata saham di kota Bandung tidak sama dengan rata rata saham di kota Bali"
```

### 3.b

Digunakan alternative `two.side` dikarenakan ingin menguji rata rata saham antar kedua kota tidak sama 

```bash
bandung_mean = 3.64
bandung_sd = 1.67
bandung_n = 19
bali_mean = 2.79
bali_sd = 1.32
bali_n = 27
tsum.test(mean.x = bandung_mean, s.x = bandung_sd, n.x = bandung_n, mean.y = bali_mean, s.y = bali_sd, n.y = bali_n, alternative = "two.side", var.equal = TRUE)
```

![image](https://user-images.githubusercontent.com/72655591/170878867-f20dfda0-7f17-4e68-a9e8-d28e3b0b4d95.png)

### 3.c

Perhitungan batas nilai kritikal

```bash
batas = qt(p = 0.025, df = 2, lower.tail = FALSE)
```

### 3.d

Mencari nilai kritikal menggunakan rumus yang tertera dibawah ini

![image](https://user-images.githubusercontent.com/72655591/170879110-0d771d60-a351-4793-bfc7-a392254a3473.png)

```bash
s = sqrt(((bandung_n-1)*bandung_sd^2+(bali_n-1)*bali_sd^2)/2)
t_value = (bandung_mean-bali_mean)/(s*sqrt((1/bandung_n)+(1/bali_n)))
```

### 3.e

Keputusan yang dilakukan ialah menolak H0 jika t_value > batas atau t_value < -batas

### 3.f

Karena nilai t_value berada diantara batas maka H0 diterima, maka kesimpulannya `Rata - rata saham di kota Bandung sama dengan rata rata saham di kota Bali`

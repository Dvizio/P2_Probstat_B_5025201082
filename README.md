# P2_Probstat_B_5025201082
Nama: Farrel Emerson

Kelas: Probstat B

NRP: 5025201082

## Penjelasan
### Soal 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴

![image](https://user-images.githubusercontent.com/82019030/170875661-0c5e7207-4a1d-46de-a64a-05bfa4326263.png)

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

#### 1A
Standar deviasi setelah memasukan data sesudah dan sebelum adalah

![image](https://user-images.githubusercontent.com/82019030/170875878-fc50054e-e6d9-4659-8008-b4ac5891fae6.png)

#### 1B
nilai t (p-value) menggunakan t.test
```
t.test(before, after, alternative = "greater", var.equal = FALSE)
```
Maka didapat 
![image](https://user-images.githubusercontent.com/82019030/170876025-847ff52b-c489-4273-8009-2a95626091de.png)

#### 1c
tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

```
var.test(before, after)

t.test(before, after, mu = 0, alternative = "two.sided", var.equal = TRUE)
```
maka didapat hasil t.test

![image](https://user-images.githubusercontent.com/82019030/170876451-19ffc983-7415-444f-a9a8-67ec5d5e8293.png)

maka dapat disimpulkan hasil tidak terpengaruh

### Soal 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan 2 library seperti referensi pada modul).

![image](https://user-images.githubusercontent.com/82019030/170876649-c8f3f69f-7c67-4838-a73f-320ea3e71df5.png)

#### 2A

```
Setuju, karena kesimpulan dari uji z menolak H0,
sehingga mobil dikemudikan rata-rata lebih dari
20000 kilometer per tahun
```
#### 2B
Output dari z test adalah, hipotesis alternatif alternative hypothesis: true mean is greater than 20000 atau H1 diterima sehingga klaim benar.

#### 2C
P-value dari uji tes z adalah 2.2e-16 atau mendekati 0, dari hasil p-value tersebut hipotesis awal dapat ditolak dan H1 diterima.

### Soal 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.

![image](https://user-images.githubusercontent.com/82019030/170876777-3b6b4a21-f5a6-4294-8b38-95d0e454d0b7.png)

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :

#### 3A
H0 dan H1 dilakukan perhitungan H0 sebagai berikut

![image](https://user-images.githubusercontent.com/82019030/170876881-f797b875-a643-4a16-9245-5ce571e42ed6.png)

Lalu perhitungan H1

![image](https://user-images.githubusercontent.com/82019030/170876914-296a08cc-bf1e-47cc-8935-9c22b8c6f3df.png)

#### 3B

![image](https://user-images.githubusercontent.com/82019030/170876970-77e4b137-1ff1-4ec2-9ed1-6453bec80bce.png)

#### 3C
Uji Statistik dengan df = 2

![image](https://user-images.githubusercontent.com/82019030/170877494-ed6d06d9-910e-4eb5-8226-66afb99e7940.png)

#### 3D
Nilai kritikal =
```
qchisq(p = 0.05, df = 2, lower.tail=FALSE)
```

![image](https://user-images.githubusercontent.com/82019030/170877163-6e733870-773c-47b1-8404-fbb2fff0e30e.png)

#### 3E
```
Karena p-value < a , Hipotesis awal ditolak
```

#### 3F
Dengan tingkat keyakinan 95%, diyakini bahwa tidak terdapat 
perbedaan rata-rata saham pada perusahaan di Bandung dan Bali.

### Soal 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS. Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing.

Jika diketahui dataset pada https://intip.in/datasetprobstat1 dan H0 adalah tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama, maka kerjakan atau carilah:

#### Soal 4A
Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1, grup 2, dan grup 3). Lalu gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.

```
dataoneway <- read.table("data_soal_4.txt", h = T)
attach(dataoneway)
names(dataoneway)

dataoneway$Group <- as.factor(dataoneway$Group)
dataoneway$Group = factor(dataoneway$Group,labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))

class(dataoneway$Group)

Group1 <- subset(dataoneway, Group == "Kucing Oren")
Group2 <- subset(dataoneway, Group == "Kucing Hitam")
Group3 <- subset(dataoneway, Group == "Kucing Putih")

qqnorm(Group1$Length)
qqline(Group1$Length)

qqnorm(Group2$Length)
qqline(Group2$Length)

qqnorm(Group3$Length)
qqline(Group3$Length)
```
maka didapat
group 1 :

![image](https://user-images.githubusercontent.com/82019030/170880468-042802ce-eb2c-4324-82ce-cd42eda79653.png)

group 2:

![image](https://user-images.githubusercontent.com/82019030/170880476-4cffd94b-8e82-4bd4-a1d3-bc594eec0ba0.png)

group 3:

![image](https://user-images.githubusercontent.com/82019030/170880508-d442f36e-3966-470d-9737-ca53b5bb449f.png)

#### 4B
Carilah atau periksalah homogeneity of variances-nya. Berapa nilai p yang didapatkan? Apa hipotesis dan kesimpulan yang dapat diambil?
```
bartlett.test(Length ~ Group, data = dataoneway)
```

![image](https://user-images.githubusercontent.com/82019030/170880595-2f20708f-d8c6-40fe-a910-1797ef7964b2.png)

#### 4C
Untuk uji ANOVA (satu arah), buatlah model linier dengan panjang versus grup dan beri nama model tersebut model 1.
```
model1 = lm(Length ~ Group, data = dataoneway)
anova(model1)
```

![image](https://user-images.githubusercontent.com/82019030/170880636-5ea425f3-cded-4465-977d-a0877d12a53a.png)

#### 4D
Dari hasil poin C, berapakah nilai p? Apa yang dapat Anda simpulkan dari H0?
```
Berdasarkan hasil yang didapatkan pada poin sebelumnya, pada taraf uji 5% didapatkan nilai p-value sebesar 0.0013. Maka, terdapat perbedaan panjang kucing yang signifikan berdasarkan grupnya.
```
#### 4E
Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.
```
TukeyHSD(aov(model1))
```

![image](https://user-images.githubusercontent.com/82019030/170880713-1744bca6-79e2-4e03-8589-92911dd056c0.png)

Dari hasil uji Tukey, dapat dilihat kombinasi dari kelompok mana yang secara signifikan berbeda. Jika menggunakan 𝛼 = 5%, perbedaan panjang kucing yang signifikan adalah grup 2 (Kucing Hitam) terhadap grup 1 (Kucing Oren) dan grup 3 (Kucing Putih).

#### 4F
Visualisasikan data dengan ggplot2
```
install.packages("ggplot2")
library("ggplot2")

ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") + ylab("Length (cm)")

```

![image](https://user-images.githubusercontent.com/82019030/170880799-49bddb1e-0b42-46b9-b7d4-f522a1fc9bbe.png)


### Soal 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen. Dengan data tersebut:

#### 5A
Buatlah plot sederhana untuk visualisasi data

![image](https://user-images.githubusercontent.com/82019030/170882817-08f6d9e2-99a6-431a-853a-436832478349.png)

![image](https://user-images.githubusercontent.com/82019030/170879456-5e26c3f9-63dc-4c0e-b512-fa13fd1e69f3.png)

![image](https://user-images.githubusercontent.com/82019030/170879472-821eb8f6-fde1-4343-828b-2a749023b39e.png)

#### 5B
Lakukan uji ANOVA dua arah

![image](https://user-images.githubusercontent.com/82019030/170882790-d2eab332-90f0-4c3e-b44e-e7e2ac06a8c6.png)

![image](https://user-images.githubusercontent.com/82019030/170879519-149b535b-5864-4f36-860b-746889d3db1f.png)


#### 5C
Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)

![image](https://user-images.githubusercontent.com/82019030/170879554-fc4a2f9b-6707-4de7-942b-865add3516f4.png)

#### 5D
Uji Tukey

![image](https://user-images.githubusercontent.com/82019030/170879589-dbfed9a4-415b-494c-a3c8-22ed3b5ab11c.png)

![image](https://user-images.githubusercontent.com/82019030/170879610-c48a2c92-b76c-4dfd-87a2-1b8aa83af441.png)

#### 5E
plot sederhana untuk visualisasi data
![image](https://user-images.githubusercontent.com/82019030/170879635-7ad92a59-d425-4c92-a242-0a51a585205f.png)
![image](https://user-images.githubusercontent.com/82019030/170879650-99f520c3-e888-4192-8ce9-959f5b3f7872.png)






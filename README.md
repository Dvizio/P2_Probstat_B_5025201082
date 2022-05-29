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
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. Jika : diketahui dataset https://intip.in/datasetprobstat1 H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama.

#### 4A
Plot 3 subjek grup


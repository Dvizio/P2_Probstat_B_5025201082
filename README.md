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
R
t.test(before, after, alternative = "greater", var.equal = FALSE)
```

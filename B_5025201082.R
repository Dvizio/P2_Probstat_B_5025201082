# Soal 1
# 1a
# Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

# Data Sebelum
before <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)

# Data Setelah 
after <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

# Cek data
my_data <- data.frame(
  group = rep(c("sebelum", "sesudah"), each = 9),
  saturation = c(before, after)
)

# Di print
print(my_data)

# Standar Devisiasi sebelum aktivitas
sd_before <- sd(before)
sd_before

# Standar Devisiasi setelah aktivitas
sd_after <- sd(after)
sd_after

# 1b

# Mencari nilai t(p-value) dengan t-test
t.test(before, after, alternative = "greater", var.equal = FALSE)

# 1c

var.test(before, after)

t.test(before, after, mu = 0, alternative = "two.sided", var.equal = TRUE)


# Soal 2
install.packages("BSDA")
library(BSDA)

zsum.test(mean.x = 23500, sigma.x = 3900, n.x = 100,
          alternative = "greater", mu = 20000,
          conf.level = 0.95)

#Soal 2a 
# Setuju, karena kesimpulan dari uji z menolak H0,
# sehingga mobil dikemudikan rata-rata lebih dari
# 20000 kilometer per tahun

# Soal 2b 
tsum.test(mean.x=23500, sd(3900), n.x=100)

# Soal 2c
# P-value dari uji tes z adalah 2.2e-16 atau mendekati 0,
# dari hasil p-value tersebut hipotesis awal dapat ditolak
# dan H1 diterima.

# Soal 3
# Soal 3a
# H0 dan H1
# H0 = (miu1 = miu2)
# H1 = (miu1 != miu2) 

# soal 3b 
# Hitung Sampel Statistik
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)

# soal 3c
# Lakukan Uji Statistik (df =2)
install.packages("mosaic")
library(mosaic)

plotDist(dist='t', df=2, col="blue")

# soal 3d
# Nilai Kritikal
qchisq(p = 0.05, df = 2, lower.tail=FALSE)

# soal 3e
# Karena p-value < a , Hipotesis awal ditolak

# soal 3f
# Dengan tingkat keyakinan 95%, diyakini bahwa tidak terdapat 
# perbedaan rata-rata saham pada perusahaan di Bandung dan Bali.

# Soal 4
## Soal 4A
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

## Soal 4B
bartlett.test(Length ~ Group, data = dataoneway)

## Soal 4C
model1 = lm(Length ~ Group, data = dataoneway)
anova(model1)

## Soal 4D
## Jawaban terlampir di laporan

## Soal 4E
TukeyHSD(aov(model1))

## Soal 4F
install.packages("ggplot2")
library("ggplot2")

ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") + ylab("Length (cm)")



# Soal 5
# Soal 5A
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL <- read_csv("data_soal_5.csv")
head(GTL)

str(GTL)

qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)

# Soal 5B
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

# Soal 5C
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean = mean(Light), sd = sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

# Soal 5D
tukey <- TukeyHSD(anova)
print(tukey)

## Poin E
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)

write.csv("GTL_summary.csv")

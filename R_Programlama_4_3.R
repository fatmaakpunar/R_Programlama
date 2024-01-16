#R BASE SİSTEMİNDE ÇİZİMLER#
library(datasets)

#KUTU-BIYIK GRAFİİĞİ#
# Veri setindeki bir değişkenin kutu grafiği
boxplot(veri_seti$degisken_adı, main = "Grafiğin Başlığı", ylab = "Y Ekseni Etiketi")

boxplot(iris$Sepal.Length~iris$Species) #iris veri setindeki "Sepal.Length" değişkeninin "Species" faktörüne göre gruplanmış kutu grafiklerini çizer
par(mfrow=c(1,1))
boxplot(mtcars$qsec~mtcars$gear, varwidth=TRUE) #mtcars veri setindeki "qsec" değişkeninin "gear" değişkenine göre gruplandırılmış kutu grafiklerini çizer. 
#varwidth=TRUE ifadesi, kutuların genişliklerini değişen grup büyüklüklerine göre ayarlamak için kullanılır.

# Tek bir değişkenin kutu grafiği
boxplot(iris$Sepal.Length)
# Bir değişkenin bir faktöre göre gruplandırılmış kutu grafiği
boxplot(iris$Sepal.Length ~ iris$Species)

#HİSTOGRAM#
# Veri setindeki bir değişkenin histogram grafiği
Histogram garfiği kullanımı genel jhaliyle şu şekilededir:
hist(veri_seti$degisken_adı, main = "Histogram Grafiği", xlab = "X Ekseni Etiketi", col = "renk")
# Veri setindeki "speed" değişkeninin histogram grafiği (varsayılan parametrelerle)
hist(cars$speed)
# Veri setindeki "speed" değişkeninin histogram grafiği (10 sınıfla)
hist(cars$speed, 10)

x <- rnorm(1000)# 1000 adet rastgele normal dağılımlı örnek oluştur
hist(x, prob = TRUE)  # Histogram çizimi, prob=TRUE olasılıkları gösterir
lines(density(x))     # Olasılık yoğunluk fonksiyonunu ekler

plot(table(cars$speed), type="s", lwd=7) #histogramı çubuk şeklinde çizdirir
cars
table(cars$speed)
library(MASS)
truehist(LakeHuron) #truehist() fonksiyonu, histogramın daha doğru bir temsilini sağlamak için özel bir hesaplama yöntemi kullanır. Bu fonksiyon, frekansları normalleştirilmiş olasılıklarla temsil eder.
lines(density(LakeHuron))


# QQ PLOT#
#qqPlot() => bir değişkenin veya veri setinin normal dağılıma ne kadar benzer olduğunu değerlendirmek için kullanılır.
#qqnorm() => değişkenin normal bir QQ grafiğini üretir
#qqline() => referans çizgisi çizer.Bu çizgi, eğer noktalar bu çizgiye yakınsa, değişkenin normal bir dağılıma daha yakın olduğunu gösterir.

library(car)
qqnorm(LakeHuron)   # QQ plot çizimi
qqline(LakeHuron)   # Referans çizgisi eklenmesi

install.packages("car")
library(car)
qqPlot(LakeHuron) #LakeHuron veri seti üzerinde bir QQ plot çizimini gerçekleştirir.

#KORELASYON GRAFİĞİ#
install.packages("PerformanceAnalytics") # finansal performans analizi için kullanılan bir R paketidir.
library(PerformanceAnalytics)
head(EuStockMarkets)
chart.Correlation(EuStockMarkets) #PerformanceAnalytics içindeki EuStockMarkets veri setinin korelasyon grafiği.

install.packages("corrplot")
library(corrplot) # R'de korelasyon matrislerini görselleştirmek için kullanılan bir kütüphanedir.
mt=cor(mtcars)
corrplot(mt, method="ellipse") #korelasyonları elipsoid şekilleriyle göstermek için kullanılır.
corrplot(cor(mtcars), method="number")

##method çeşitleri:
#"circle": Korelasyon matrisini daire içine yerleştirir ve renkli dairelerle gösterir.
#"square": Korelasyon matrisini bir kare içine yerleştirir ve renkli karelerle gösterir.
#"color": Korelasyon matrisini renkli bir görselleştirme ile gösterir. Renkler, pozitif ve negatif korelasyonları belirtir.
#"number": Korelasyon katsayılarını sayısal değerlerle gösterir.
#"shade": Korelasyon matrisini renkli bir görselleştirme ile gösterir, ancak renk tonları sadece pozitif korelasyonları belirtir.

####R'DA GRAFİK ÇİZDİRMENİN FARKLI YÖNTEMLERİ####
library(datasets) #R'ın temel kurulumu içinde bulunan ve birçok örnek veri setini içeren bir pakettir. 
ls("package:datasets") #datasetteki pakeleri göserir
head(rock) #rock paketinin ilk 6 elemanı

with(rock, plot(area, peri)) #çizim
title(main = "Rock Veri Seti")#çizime başlık eklenir

#çizimi rock.png dosyasına kopyalamak için 
pdf(file="cizim1.pdf")#bir PDF dosyasına çizimleri kaydetmek için kullanılır
dev.off() #çizim gereci kapatılır
dev.copy(png, file="rock.png") #çizimi rock.png dosyasına kopyalar

#SERPİLME GRAFİĞİ#
plot(rock$area,rock$peri) #alan çevre grafiği
plot(rock$area, rock$peri, main="Rock veri seti saçılım grafiği") #başlık ekler

plot(rock) #ikiden fazla değişkenin birbirine göre çizimi

#en çok kullanılan argümanlar:
#pch: çizim sembolü, belirtilmemişse içi boş çember kullanılır
#lty: line type, doğru türü (noktalı, kesik çizgi vb.)
#lwd: line width, çizgi kalınlığı
#col: renk isimleri için colors() yazabilirsiniz
#xlab: x ekseni etiketi
#ylab:y ekseni etiketi
#cex: nokta büyüklüğü
plot(rock$area, rock$peri, pch=18, col="red", cex=1) # 18 numaralı sembol(bir yıldız şeklinde bir semboldür), kırmızı renkli, 1 büyüklüğünde noktalı serpilme grafiği

plot(rock$area, rock$peri,
     main="Kayaların alan ve çevre ilişkisi",
     xlab="Alan",
     ylab="Cevre")
grid() #R'da grafik penceresine bir ızgara eklemek için kullanılır.

plot(CO2$uptake, CO2$conc, pch=as.integer(CO2$Type))
#CO2$uptake ve CO2$conc: Bu ifadeler, "CO2" veri setindeki "uptake" ve "conc" sütunlarını seçer.
#pch=as.integer(CO2$Type): Bu ifade, noktaların sembolünü belirler. "Type" sütunu, farklı tip verileri içerir ve bu tiplere karşılık gelen sayısal değerlerle semboller belirlenir. 
#as.integer() fonksiyonu, "Type" sütunundaki faktör değerlerini sayısal değerlere dönüştürür.

#işaretlerin renklerini de farklılaştırmak 
plot(CO2$uptake,CO2$conc,pch=as.integer(CO2$Type),col=as.integer(CO2$Type))
#pch=as.integer(CO2$Type): Bu ifade, noktaların sembolünü belirler. Her bir kategoriye bir sembol atanır.
#col=as.integer(CO2$Type): Bu ifade, noktaların rengini belirler. Her bir kategoriye farklı bir renk atanır.

#par fonksiyonu ile degistirilecek pek cok ozellik var.
liste=par() #par() fonksiyonunu çağırarak grafik parametrelerinin bir listesini döndürür. 
#par() fonksiyonu, grafik ayarlarını kontrol etmek için kullanılır ve farklı grafik parametrelerini içeren bir liste döndürür.
length(liste) #listenin eleman sayısı
names(liste)#listenin elemanları

par("lty")
par("col")
par("cex")

plot(CO2$uptake,CO2$conc,pch=as.integer(CO2$Type))
legend(x=10,y=900, c("Quebec","Mississipi"), pch=1:2)

plot(CO2$uptake,CO2$conc,pch=as.integer(CO2$Type))
legend("top", c("Quebec","Mississipi"), pch=1:2)

coplot(conc~uptake|Type,data=CO2) # Bu ifade, "conc" değişkeninin "uptake" değişkenine göre nasıl değiştiğini gösteren bir yığın kutu grafiği oluşturur. "Type" değişkeni, kategorileri belirler ve bu kategorilere göre ayrı ayrı yığın kutu grafiği çizilir.

par(mfrow=c(1,2))
plot(mtcars$wt,mtcars$mpg,main="mpg~wt",pch=16,col="red")
plot(mtcars$wt,mtcars$disp,main="disp~wt",pch=16,col="blue")
mtext("Ana Başlik",line=-2,outer=TRUE,cex=1.5)
mtext("Ana Başlik")

#SÜTUN GRAFİĞİ#
# Cizdirilen degisken kategorik bir degiskense plot() komutu sutun grafik cizdirir.
par(mfrow=c(1,1))
plot(iris$Species)
plot(CO2$uptake)
# aynı zamanda sutun grafigi icin geliştirilen fonksiyon
barplot(c(3,4,2,6,7))

#ÇİZGİ GRAFİĞİ#
x=seq(from=-3,to=3,by=0.01) ## x'e -3 ile 3 arasında 0.01 aralıklarla değerler atadık
x
y=dnorm(x) #x değerleri üzerindeki normal dağılımın yoğunluk fonksiyonunu hesapladık Bu hesaplamayı yapmak, normal dağılımın belirli bir değerdeki yoğunluğunu anlamak veya grafikle görselleştirmek için kullanılabilir. 
y
par(mfrow=c(1,1)) #Çift sütunlu bir grafik düzeni belirledik
plot(x,y,main="Nokta grafik") #İlk grafik: Nokta grafik
plot(x,y, type="l", main="Cizgi grafik") # İkinci grafik: Çizgi grafik

# type argumanı icin:
# p: noktalar (points)
# l: cizgi (lines)
# o: noktalı cizgi (nota ve cizgi bir arada (overploƩed))
# b: noktalı çizgi ama cizgiler noktalara dokunmaz
# c: noktalı cizgi, noktaların olması gereken yerler boş kalır
# s,S: (Step) merdiven basamakları
# h: histogram
# n: bos (grafigi eksenler, eksen isimleri ve baslıkla cizdirip bos bırakmak ve sonraki adımda points ve lines komutları ile eklemeler yapmak için kullanılır.)
# type="n" argümanı özellikle çoklu verilerle çalışmak için faydalıdır.

x = 1:5 
y = sample(1:100, 5)
plot(x,y, type="h")



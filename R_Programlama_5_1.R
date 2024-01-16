#R'DA FONKSİYON ÇİZİMİ#
#fonksiyon çizmek için curve() kullanılır
curve(exp(-abs(x))*sin(2*pi*x), -5, 5) #exp=> çizilen fonksiyon, -5, to = 5: x ekseninin çizim aralığı.

##istenen iki çizgi arasında çizgi çizme
#segments kullanılır
plot(NULL, xlim=c(0,5),
     ylim=c(0,5),
     xlab="x",
     ylab="y") #çizim alanı oluşturur
segments(x0=1, y0=1, x1=4, y1=4, col="blue")# belirli bir segment, çizgi çizer

##grafiğe metin ekleme
#bunun için text fonksiyonu kullanılır
plot(NULL, xlim=c(0,10),
     ylim=c(0,10),
     xlab="x",
     ylab="y")
text(x=4, y=2, labels="(4,2) noktası", col="red", cex=0.8) #cex=noktanın boyutu
text(x=6, y=3, labels="(6,3) noktası" , col="darkgreen")
text(x=8, y=8, labels="(8,8) noktası", col="purple" )
text(x=5, y=5, labels="(5,5) noktası", col="blue" )
text(x=2, y=7, labels="(2,7) noktası",col="yellow" )

#QQPLOT2 KÜTÜPHANESİ#
install.packages("ggplot2")
library(ggplot2) #ggplot2 Veri görselleştirmesi yapmak için kullanılır ve özellikle veri analizi ve raporlama için yaygın olarak tercih edilen bir pakettir.
library(datasets)
qplot(x=drat, y=qsec, data=mtcars)
#ggplot yapısı basitçe söyledir
#ggplot(data,aes(x,y)+geom_point+geom_line()+geom_smooth)

#SAÇILIM GRAFİĞİ#
ggplot(mtcars, aes(x=drat, y=qsec))+geom_point()

p<-ggplot(mtcars,aes(x=drat, y=qsec))
p+geom_point()

###Aynı grafiği belirli bir değişken bakımından nasıl çizdiririz
ggplot(mtcars,aes(x=drat, y=qsec))+geom_point(aes(size=cyl)) #size=cyl nokta boyutunu belirler. Yani her bir noktanın boyutu, o noktaya karşılık gelen "cyl" değeriyle belirlenir.
ggplot(mtcars,aes(x=drat, y=qsec))+geom_point(aes(size=cyl,col=gear)) #col=gear noktaları renklendirir
ggplot(mtcars,aes(x=drat, y=qsec,size=cyl,col=gear))+geom_point() #böylede yazılabilir.
ggplot(mtcars,aes(x=drat, y=qsec))+geom_point(aes(col=as.factor(gear))) #as.factor(gear) ifadesi, "gear" değişkenini faktör veri tipine dönüştürerek renk skalasını kategorik yapar.

######ÇİZGİ GARFİĞİ#########
ggplot(cars,aes(x=speed, y=dist))+
  geom_line()
#grafiği çizgilerle birleştirilmiş noktalar şeklinde çizmek istersek
ggplot(cars,aes(x=speed,y=dist))+
  geom_point()+
  geom_line()

######SÜTUN GRAFİĞİ######
ggplot(mtcars,aes(x=carb))+
  geom_bar()
#factor değişkeni daha düzgün bir görünüme dönüştürür
ggplot(mtcars,aes(x=as.factor(carb)))+
  geom_bar()

ggplot(mtcars,aes(x=as.factor(cyl),fill=as.factor(gear)))+
  geom_bar(position="dodge")

ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(gear))) +
  geom_bar(position=position_dodge(width=0.5))

ggplot(mtcars,aes(x=as.factor(cyl),fill=as.factor(gear)))+
  geom_bar(position="stack")

####HİSTOGRAM#####
ggplot(mtcars,aes(x=qsec))+
  geom_histogram(binwidth=1,fill="lightblue",col="orange")

####KUTU GRAFİĞİ#####
library(ggplot2)
library(grid)  # temel grafik düzenleme işlemlerini gerçekleştirmek için kullanılır.
install.packages("gridExtra") #grid paketinin temel işlevselliğini genişletir ve özellikle birden fazla ggplot nesnesini birleştirmek için kullanılır.
library(gridExtra)
p1<- ggplot(iris,aes(x=Species, y=Sepal.Length))+
  geom_boxplot()+
  theme_bw()
p1

p2<- ggplot(iris,aes(x=Species, y=Sepal.Length))+
  geom_boxplot(outlier.color="red",outlier.shape=1)+
  theme_bw() ## aykırıdegerler renklendirildi
p2
p3<-ggplot(iris,aes(x=Species, y=Sepal.Length))+
  geom_boxplot()+
  geom_jitter(width = 0.2)+ theme_bw()
p3

grid.arrange(p1,p2,p3,ncol=3) #3 grafiği yan yana gözterir

#YOĞUNLUK GRAFİĞİ#
ggplot(iris, aes(Sepal.Length))+
  geom_density(aes(fill=Species), alpha=0.7)+  # alpha=0.7 ifadesi, renkli alanlardaki şeffaflığı düzenler.
  labs(title = "Yoğunluk Grafiği",
       subtitle = "iris veri seti",
       x="Sepal Length",
       y="Yoğunluk")+
  theme_minimal() # "minimal" temayı grafiğe uygular.


### Çoklu cizim
head(morley)
ggplot(morley, aes(x=Run, y=Speed))+  geom_line(aes(linetype=as.factor(Expt))) 
#morley veri setindeki run ve speed değişkenlerini ile bir çizgi grafiği çizer. Expt’i ise faktör değişkeni haline getirip gruplandırır.

## Baslık ve Eksen isimlendirmesi
p<-ggplot(mtcars,aes(x=drat,y=qsec))
p+geom_line()+
  ggtitle("Hız-Mesafe Grafiği")+
  xlab("Hız")+
  ylab("Mesafe")

p+geom_line()+
  labs(title="Hız-Mesafe Grafiği", x="Hız", y="Mesafe")

### Grafige metin eklemek
p4<-ggplot(cars, aes(x=speed, y=dist))+
  geom_point()+
  stat_smooth(method = lm) #düzleştirme eğrisi ekler
p4+annotate(geom = "text",
            x=15, y=50,
            label="Doğrusal Regresyon Eğrisi",
            family="serif",
            fontface="italic",
            colour="darkblue",
            size=8)

#Grafiğe doğru eklenmesi
#bir grafiğe yatay,dikey veya eğimli bir doğru eklenebilir
#geom_hline(): yatay doğru için
#geom_vline(): dikey doğru için
#geom_abline() :spesifik özelliklerini belirteceğimiz doğru için 

p4<- ggplot(cars,aes(x=speed, y=dist))+ geom_point()
p4
p4+geom_hline(yintercept = 50)+
  geom_vline(xintercept = 15)+
  geom_abline(intercept = 25, slope=3)
#slope: çizginin ne kadar eğik veya düz olacağını belirler.
#intercept: Eğik çizginin yatay ekseni (x) kestiği noktadır. Yani, çizginin x-eksenini kestiği noktanın y koordinatını ifade eder.

#birden fazla çizgi çizme
data_lines <-data.frame(x=2:4,
                        y=c(4.5,5,2),
                        xend=c(6,8,5),
                        yend=c(7,5,6),
                        col=paste("line_", letters[1:3]))
data_lines
gp + geom_segment(data=data_lines,aes(x=x,y=y,xend=xend,yend=yend,  col=col))

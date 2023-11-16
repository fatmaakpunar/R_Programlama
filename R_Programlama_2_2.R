###### Dataframe (veri tablosu (cercevesi)
dataframe1 <- as.data.frame(matrix1)
dataframe2 <- as.data.frame(matrix2)
dataframe1
dataframe2
#matrix1 ve matrix2 adlı iki matrisi as.data.frame() fonksiyonu ile veri çerçevesine dönüştürür

d=data.frame(subjectID=1:5, gender=c("M", "F", "F", "M", "F"), score=c(8,3,6,5,5))
d
nrow(d)
nrow(d)
attributes(d) #d veri çerçevesinin öznitelikleri görüntüler
View(d)#d veri çerçevesini tablo şeklinde görmek için kullanılır
edit(d)#Veri çerçevesini düzenleme moduna geçirir. Ancak, bu komut genellikle RStudio'nun içinde doğrudan kullanılamaz ve bir hata alınır.
#####################################################################################################################################################
######TİBBLELAR (AN ENHANCED DATA FRAME)
install.packages("tidyverse")
# programlama dilinde veri analizi ve manipülasyonu için kullanılan bir dizi paketin toplu adıdır. 
#Tidyverse, veri bilimi projelerini daha etkili ve anlaşılır bir şekilde gerçekleştirmenizi sağlamak için özel olarak tasarlanmış bir dizi paketi içerir. 
#Bu paketler, veri analizi süreçlerini düzenlemeye, veriyi temizlemeye ve görselleştirmeye odaklanmıştır.
library(tidyverse)
iris #iris veri seti, R'de sıkça kullanılan bir örnek veri setidir ve çiçek türüne ait ölçümleri içerir.
class(iris) #dataframe
#Tibble:  veri çerçevelerine benzer bir yapıya sahiptir ancak bazı önemli farklılıkları vardır. Tibble'lar, veri analizi ve manipülasyonu için daha modern ve düzenli bir arayüz sunar.
iris_tibble <-as_tibble(iris)#veriyi tibble formatına dönüştürür
is_tibble(iris_tibble)#TRUE

tibble(
  x = 1:5,
  y = 1,
  z = x ^ 2 + y
)

tb <- tibble(
  `:)` = "smile",
  ` ` = "space",
  `2000` = "number"
)
tb

df1<-data.frame(
  `:)` = "smile",
  ` ` = "space",
  `2000` = "number"
)
df1

#runif(): uniform random numbers
tibble(
  a=rnorm(100,3,1),
  b=1:100,
  c=runif(1e2),
  d=sample(letters,1e2, replace = TRUE)
)
tb.ornek=tibble(
  x = 1:3,
  y = c("a", "b", "c")
)
tb.ornek
install.packages('nycflights13') #New York şehri havalimanlarından gerçekleşen uçuşlara ait bir veri seti
#flights veri setinin ilk 15 satırını ve tüm sütunlarını ekrana yazdırmak 
nycflights13::flights %>% 
  print(n = 15, width = Inf) 

###########################################################################################################################
### tribble(...): tribble, tibble'a benzer şekilde veri çerçeveleri oluşturmak için kullanılır, ancak özellikle tablo benzeri veri girişi yapmak için tasarlanmıştır.
#tribble fonksiyonu, kolon isimlerini belirterek ve satırları alt alta ekleyerek okunabilir bir veri çerçevesi oluşturmayı sağlar.
install.packages("tidyverse")
library(tibble)
tribble(
  ~x, ~y,
  1, "a",
  2, "b",
  3, "c"
)

nycflights13::flights %>%
  View()
#nycflights13 verilerini tablo haline getirir
##############################################################################
### Tibble'da alt kümeleme
df <- tibble(
  x = runif(5),
  y = rnorm(5)
)
df

df$x # df veri çerçevesinin x sütununun değerlerini görürüz
df[["x"]] # df veri çerçevesinin x sütununun değerlerini görürüz
df[[1]]
df[ ,1]
df[ ,1:2]
df[1,2]
###########################################################################
#SORU: 4. satır hariç diğer değerleri görmek istiyoruz. Nasıl?
df[-4,]
## SORU: 4. satırdaki elemanlar sıfırdan küçük mü?
df[4,]<0

class(as.data.frame(df))#df dataframe olarak gör

# Veri çerçevesinde subset() fonksiyonu: Alt küme seçimi
subset(df,select=y)
################################################################################
#SORU: Aşağıdaki veri setini data frame olarak oluşturunuz ve soruları yanıtlayınız.
isim=c("Ayse","Fatma","Ali","Umut")
yas=c(8,10,9,7)
boy=c(130,145,137,122)
kilo=c(25,32,29,24)
df5=data.frame(isim,yas,boy,kilo,stringsAsFactors = FALSE)
#stringsAsFactors=TRUE olursa isim değişkeni factor değişken olarak tanımlanır.
#stringaAsFactors=FALSE olduğunda character olarak tanımlanır

## SORU: Yukarıdaki df5 veri çerçevesinde, boyu 135cm in üzerinde olan çocukları isim, yaş, boy ve kilo değişkenleri bakımından belirleyiniz.
subset(df5, subset=boy>135)
## SORU: Kilosu 30kg dan az olan çocukların isimleri ve kilolarını gösteriniz
subset(df5, subset=kilo<30, select=c(isim,kilo))
## SORU: df5 i tibble a dönüştürünüz ve df6 ismini sağa atama operatörü ile atayınız
as_tibble(df5)->df6
# SORU: df6 kullanrak kilosu 30kg dan az olan çocukların isimleri ve kilolarını gösteriniz
subset(df6, subset=kilo<30, select=c(isim,kilo))
##########################################################################################################################################################
## Yeni kayıt(gözlem) ekleme

df5=rbind(df5,data.frame(isim="Ahmet",yas=11,boy=138,kilo=45)) #data.frame e gözlem ekleme
df5
df6=rbind(df6,tibble(isim="Ahmet",yas=11,boy=138,kilo=45))
df6
# alternayif yol:
yeni.gozlem=data.frame(isim="Ahmet",yas=11,boy=138,kilo=45)
df5=rbind(df5,yeni.gozlem)
df5
##############################################################################################################################################################
# Yeni değişken (sütun) ekleme
##soru: df5 veri çerçevesinde doğum yeri değişkenini ekleyelim 
dyr=data.frame(dogum.yeri=c("İzmir", "Eskişehir", "İstanbul", "Ankara", "Afyonkarahisar", "Konya"))
(df5=cbind(df5,dyr))
df5
#############################################
## Diziler (Arrays)
#############################################
array1 <- array(0, dim = c(2, 2, 3))
array1

v1 = c(1,2,3)
v2 = c(4, 5, 6, 7, 8, 9)

a = array(c(v1,v2), dim = c(3,3,2))
a

v1 = c(1, 2, 3)
v2 = c(4, 5, 6, 7, 8, 9, 10)

column_names <- c("col1", "col2", "col3")
row_names <- c("row1", "row2", "row3")
matrix_names <- c("m1", "m2")

a = array(c(v1, v2), dim = c(3, 3, 2), dimnames = list(row_names, column_names, matrix_names))
a
## SORU: Dizinin 2. matrisinin ilk sırasını çağırın.
a[,1,2]
# Dizinin 2. matrisinin 2.sütununun 1. sırasındaki elemanı(değeri) çağırın
a[1,2,2]
# Dizinin 2. matrisini çağırın.
a[,,2]

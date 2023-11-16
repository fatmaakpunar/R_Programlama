#ÇALIŞMA ALANI
ls() # R ortamında hangi nesnelerin tanımlı olduğunu gösterir yani daha önce girdiğimiz bütün nesneleri görürüz.

#Örneğin:
# Örnek değişkenler oluşturalım
a <- 1
b <- c(2, 3, 4)
# ls() fonksiyonu ile tanımlı nesneleri listeleyelim
ls()
#Bu kod, a, bgibi değişkenlerin ve fonksiyonların isimlerini listeleyecektir.

rm(matrix1) #matrix1'i nesnelerin içinden siler
ls()#ls() ile kontrol edebiliriz

rm(ls()) ## bu ise yaramaz
#rm(list = ls()) ## ama bu ise yarar tüm nesneleri siler çalıştırmak biraz tehlikeli olabilir.

#########################################################################################################################33

##ÇALIŞMA DİZİNLERİ
getwd() #R'ın şuan çalıştığı dizini gösterir ben cloud da çalışıyum yani "/cloud/project"
# Çalışma dizinini değiştir
setwd("/yeni/dizin/yolu") # R'nin çalışma dizinini belirtilen "/yeni/dizin/yolu" olarak değiştirir

#############################################################################################################################

### TEMEL VERİ TİPLERİ:
#1)Numeric (Sayısal):
#   Integer: Tam sayıları temsil eder.
#   Double: Ondalıklı sayıları temsil eder.
#2)Character (Karakter) veya String (Dizi):Metin veya karakter dizilerini temsil eder.
#3)Logical (Mantıksal):TRUE veya FALSE değerlerini temsil eder.

###DİĞER VERİ TİPLERİ:
#1)Factors (Faktörler):Kategorik verileri temsil eder. Belirli bir sınıf içindeki farklı seviyeleri ifade eder.
#2)Dates (Tarihler):Tarih ve saat bilgilerini temsil eder.

vector1 <- c(1,2,6,8,5)
vector1
mean(vector1)

rep(x = 16, times = 3)
rep(16, 3)
rep("Avakado", 5)

seq(from = 3, to = 12, by = 3)
seq(3, 12, 3)
seq(2.4, 8.6, .15)

mixed.vector <- c(1:8,
                  rep(16,4),
                  rep("Avakado", 4),
                  seq(3, 13, 3))
mixed.vector
example <- "mean(c(1,2,3,4))"
example1<-mean(c(1,2,3,4))

vector2 <- c("thing1",
             "thing2",
             "string1",
             "string2",
             "red fish",
             "blue fish")
vector2
mean(vector2)#NUMERİC OLMADIĞI İÇİN DÖNDÜRMEZ
vector3 <- c(T, F, T, T, F)

vector3 <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
vector3
mean(vector3)#true=1 false=0 olduğundan ortalamasını alır

is.numeric(vector1)#TRUE
is.numeric(vector2)#FALSE
is.numeric(vector3)#FALSE
is.character(vector1)#FALSE
is.character(vector2)#TRUE
is.character(vector3)#FALSE
is.logical(vector1)#FALSE
is.logical(vector2)#FALSE
is.logical(vector3)#TRUE

vector3 <- as.numeric(vector3) #vector3 ü numeric e dönüştürür
is.numeric(vector3) #TRUE
vector3 #1 0 1 1 0


vector5 <- c("8", "12", "16")
vector5
mean(vector5) #NA ÇÜNKÜ KARAKTER DİZİSİ İÇERİYOR
mean(as.numeric(vector5)) #BURADA DÖNÜŞTÜRÜP ALIRSAK SONUÇ 12 OLUR YUVARLAMIŞ

mixed.vector
mixed <- as.numeric(mixed.vector) ; mixed #1  2  3  4  5  6  7  8 16 16 16 16 NA NA NA NA  3  6  9 12
mean(mixed)#NA ÇÜNKÜ İÇİNDE NA DEĞİŞKENLERİ VAR






#R programı ile İstatistiksel Analiz I

sessionInfo() #R çalışma zamanındaki oturum hakkında ayrıntılı bilgi sağlayan bir fonksiyondur. 
#Bu fonksiyon, R versiyonunu, yüklü paketleri, çalışma zamanı ayarlarını ve diğer çeşitli bilgileri içeren bir liste döndürür.

RStudio.Version()
#fonksiyonu, RStudio IDE'nin sürümü hakkında bilgi sağlayan bir RStudio özel fonksiyondur. 
#Bu fonksiyon, RStudio IDE'nin yüklü sürüm numarasını, yayın tarihini ve diğer ayrıntıları içeren bir liste döndürür.

### Atama Operatorleri
# = sola atama
# <- sola atama
# <<- sola atama
# -> sağa atama

## Ozel Operatorler
# %in% Grup uyeligi kontrolu #
#isTRUE Dogruluk kontrolu

#R'de yardım alma
#R yardım dosyalarına bakmak için bir kelimenin önüne iki soru işareti koyarız
??mean

## Bazı Temel Matematiksel Fonksiyonlar

# exp(x) e^x exp(2)
# sqrt(x) karekok alma
# log10(x) Logaritma (10 tabanı)
#log(x,2) Logaritma (2 tabanı)
# log(x) Logaritma 
# abs(x) mutlak değer
# ceiling(x) üst tamsayıya tamamlama
# floor(x) Alt tamsayıya kes
# trunc(x) Kırpma, kesme
# round(x,digits=n) Yuvarlama
log10(100)
log(100,2)
log(100) ; log(100, exp(1))
abs(-33.1)

ceiling(3.24)
floor(3.24)
trunc(2.95)
round(2.3456) #2
round(2.965) #3
round(2.3456, digits = 2)


example.vector <- c(86, 14, 9) #burada c()vektör oluşturur
example.vector
mean(example.vector)#ortalama alma
vec.mean <- mean(example.vector)# example.vector adlı vektörün ortalamasını hesaplar ve bu ortalamayı vec.mean adlı bir değişkene atar. Bu sayede, vec.mean değişkeni artık example.vector'ın ortalamasını içerir ve bu değeri daha sonra kullanabilirsini
vec.mean


# seq fonksiyonu: Belirli bir aralıktaki sayıları içeren bir dizi vektörü oluşturmak için kullanılır.
# seq kullanımı
result <- seq(from, to, by)
#from: Dizi başlangıç değeri
#to: Dizi bitiş değeri
#by: Artış miktarı 
# 1'den 10'a kadar olan sayıları içeren bir vektör oluştur
vec <- seq(1, 10)

# 0'dan 1'e kadar 0.2 artış miktarıyla sayıları içeren bir vektör oluştur
vec2 <- seq(0, 1, by = 0.2)

# -5'ten 5'e kadar 1'lik artış miktarıyla sayıları içeren bir vektör oluştur
vec3 <- seq(-5, 5, by = 1)

#rep fonksiyonu: Belirli bir değeri belirli bir sayıda tekrarlamak için kullanılan bir R fonksiyonudur. 
rep(x, times)
#x: Tekrarlanacak değer veya vektördür.
#times: x değerinin kaç kez tekrarlanacağını belirten bir sayıdır
rep(c(1, 2, 3), times = 2)

#Çalışma Soruları

# 100 ile 200 arasındaki tüm tamsayıları içeren bir vektör oluşturun ve
# "Seq12" adlı bir nesnede saklayın
# Sonra bu vektörün ortalamasını mean12 adlı bir nesnede saklayın.

seq12 <- seq(100,200,1)
seq12
mean12<-mean(seq12)
mean12

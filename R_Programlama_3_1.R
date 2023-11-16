#############################################
## Listeler (Lists)
#############################################
(my.list <- list("one", TRUE, 3, 2+3i, 5.78))
str(my.list)#my.list tin yapısı hakkında bilgi verirr
#listenin 2. elemanını çağıralım
my.list[[2]]#değerin kendisi ile çalışmak istiyorsam
my.list[2]#matrisle işlem yapılacaksa

#ayrıca listenin ögelerini yapım aşamasında veya daha sonra da adlandırılabilir
(my.list <- list(first="one",second=TRUE, third=3, fourth=2+3i, fifth=5.78))
names(my.list)#listenin isimleri
my.list$s#listedeki second değer
my.list$f#null verir 3 tane f ile var hangisini ççağıracağını bilemez

names(my.list)<-c("First Element", "Second Element", "Third Element", "Fourth", "Fifth Element")
my.list
my.list$'Second Element' #2. elementi verir

my.list1=list(isim="ayşe",
              vize.not=95,
              final.not=c(70,100))
my.list1
my.list1[2]
my.list1[[2]]

#SORU: Final notuna bir not daha eklemek istersek örneğin 100 eklemek istersek ne yapmalıyız?
my.list1$final.not[[3]]="100"
my.list1$final.not

## SORU: Bu 100 değerini tekrar silmek istersek, ne yapmalıyız? (Sonuç aşağıdaki gibi görünmeli)
my.list1$final.not[[3]]=" "???


vector1 <- c(1,2,6,8,5)
vector2=c("elma", "armut", "Ayse", "Ali", "kedi", "balık")
matrix1 <- matrix(vector2, nrow = 2, ncol = 3)
dataframe1=as.data.frame(matrix(1:6,nrow=2,ncol=3))
mixed.vector <- c(1:8,
                  rep(16,4),
                  rep("avakado", 4),
                  seq(3, 13, 3))
mixed.vector
matrix2 <- matrix(mixed.vector, nrow = 4, ncol = 5)
dataframe2 <- as.data.frame(matrix2)
array1 <- array(0, dim = c(2, 2, 3))
ourlist <- list(vector1,
                vector2,
                dataframe1,
                dataframe2,
                matrix1,
                array1)
ourlist
##SORU: ourlist içindeki vector2'yi çağırın.
ourlist[[2]]
#Soru: ourlist içindeki vector2 nin içindek ikinci elemanı çağırın
ourlist[[2]][2]

#Soru: ourlist içinde dataframe içindeki 5. elemanı çağırın
ourlist[[4]][5]
ourlist[[4]]$V5

class(ourlist[[4]][5])#data.frame
class(ourlist[[4]]$V5)#character

#Soru: ourlist içinde dataframe içindeki 5. elemanının 3. satırı
ourlist[[4]]$V5[3]

#Soru: mylist 2 isimli bir liste oluşturulacak . 3 öğrencinin (isimleri Ayşe, Fatma, Ali)
#vize notları sırasıyla 95,70,15 final notları ise 70,50,85 olacak bir liste oluşturun
my.list2 <- list(isim=c("Ayşe", "Fatma", "Ali"),
                 vize.not=c(95,70,15),
                 final.not=c(70,50,85))
my.list2
#my.list2 ye neşe ismini ekleyiniz
my.list2$isim[[4]]="Nese"
my.list2


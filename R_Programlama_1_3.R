#### Matris islemleri

# * Eleman bazli carpim
# %*% ic carpim
# %o% dış carpım
# crossprod çapraz carpım
# t devrik matris
# diag kosegen matris ; birim matris ; kosegen elemanlar vektoru ; matrisin izi
# det determinant
# det minör Aij ; kofaktör Aij
# ginv Moore‐Penrose genellestirilmis ters matrisi

# solve Ters matris (A^‐1)
# solve y=Ab icin A^‐1b cozumu
# eigen Ozdeger ve ozvektorler
# svd Tekil deger ayrıştırması
# cbind sutunları birleştirme
#rbind sıraları birlestirme
#rowMeans satır ortalamaları
#rowSums satır toplamları
#colMeans sutun ortalamaları
#colSums sutun toplamları

Z=matrix(c(3,3,4,9,8,2,7,4,9), nrow = 3, ncol = 3, byrow=T)
Z
det(Z)
solve(Z)
eigen(Z)
svd(Z)
cbind(A,Z)
rbind(A,Z)
rowMeans(Z)
rowSums(Z)
library(MASS); ginv(Z)
colMeans(Z)
colSums(Z)

## altküme nesneleri
seq12 <- seq(100,200,1)#100 den 200 e sayı dizisi
seq12[3]
seq12[c(3,7)]
seq12

matrix1
matrix1[2,3] #2. satır 3. sütun
matrix1[,2] #2. sütunun hepsi
matrix1[2,] #2. satırın hepsi
matrix1[2] #2. değişken 2. satır 1. sütuna denk gelir


vector2 <- c("elma",
             "armut",
             "Ayse",
             "Ali",
             "kedi",
             "balık")
vector2

matrix1 <- matrix(vector2, nrow = 2, ncol = 3)#vector'yi 2 satır 3 sütunluk bi matrise çevirir
matrix1
matrix(vector2, nrow = 2, ncol = 3,dimnames = list(c("1","2") ,c("Meyve","İsim","Hayvan"))) #oluşturduğumuz vector2 matrisinin satır ve sütunlarına dimnames fonksiyonuyla isim veririrz.

is.character(matrix1)#TRUE
######################################################################################################################################################################################################
mixed.vector <- c(1:8,
                  rep(16,4),
                  rep("avakado", 4),
                  seq(3, 13, 3))
mixed.vector
matrix2 <- matrix(mixed.vector, nrow = 4, ncol = 5) #mixed.vector dizisini matrixe çevirir
matrix2
######################################################################################################################################################################################################
matrix(1:9, nrow = 3, ncol = 3)
matrix(1:9, nrow = 3, ncol = 3, byrow = T) #byrow=TRUE matrixi  satır şeklinde sıralar
######################################################################################################################################################################################################
rownames = c("row1", "row2", "row3")
colnames = c("col1", "col2", "col3")
m = matrix(c(1:9), nrow = 3, byrow = TRUE, dimnames = list(rownames, colnames))
m
######################################################################################################################################################################################################
matrix(NA, nrow = 5, ncol = 3)
matrix(NA, 5, 3)

matrix(,5,3)#yukarıdakiiki kodla aynı sonucu verir
######################################################################################################################################################################################################
mat.1 <- matrix(c(1,0,1,1), nrow=2)
mat.1
mat.2 <- matrix(c(1,1,0,1), nrow=2)
mat.2
mat.1 %*% mat.2 #matris çarpımı
det(mat.1 %*% mat.2)#matris çarpımının determinantı
solve(mat.1 %*% mat.2)#matris çarpımı tersi
det(mat.1)#mat.1 matrisinin determinantı
######################################################################################################################################################################################################
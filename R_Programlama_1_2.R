## Vektör BirleşƟrme
v <- 1:10
y <- 2:11

# Birleştirme
result_combine <- c(v, y)
print(result_combine)

# Satır bazında birleştirme (matris oluşturma)
result_rbind <- rbind(v, y)
print(result_rbind)

# Sütun bazında birleştirme (matris oluşturma)
result_cbind <- cbind(v, y)
print(result_cbind)


#matrix fonksiyonu: R'de bir matris oluşturmak için kullanılır. 
matrix(data, nrow, ncol, byrow = FALSE)
#data: Matrisin elemanlarını içeren bir vektör.
#nrow: Matrisin satır sayısı.
#ncol: Matrisin sütun sayısı.
#byrow: Eğer TRUE olarak ayarlanırsa, matrisin elemanları satır bazında (byrow = TRUE) yerleştirilir; aksi takdirde sütun bazında (byrow = FALSE) yerleştirilir.
data_vector <- c(1, 2, 3, 4, 5, 6)
my_matrix <- matrix(data_vector, nrow = 3, ncol = 2)
my_matrix

vector1 <- seq(1,6,1)
matrix1 <- matrix(vector1, nrow = 2, ncol = 3)
matrix1

A=matrix(1:9, nrow = 3, ncol = 3, byrow=TRUE)
A

J=matrix(1:9, nrow = 3, ncol = 3, byrow=FALSE)
J

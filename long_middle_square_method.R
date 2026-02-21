n <- 400 # üretilecek sayı adedi 319 da 111 in tekrarı dönüyor
seed <- 50687108 # 8 basamaklı seed
u <- numeric(n)

for (i in 1:n){
 seed <- seed^2
 seed <- as.numeric(substr(sprintf("%016.0f", a),5,12)
 u[i] <- seed/10^8
}
print(u)

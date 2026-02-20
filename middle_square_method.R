n <- 1000000                 # üretilecek sayı adedi
a <- 12345678           # 8 basamaklı seed
u <- numeric(n)

for(i in 1:n){
  a <- a^2
  a <- as.numeric(substr(sprintf("%016.0f", a), 5, 12))
  u[i] <- a / 10^8
}

u

cor(u[-length(u)], u[-1])

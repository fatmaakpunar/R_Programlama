###facet: bölünme, panel matrisi
#facet yaklaşımı grafiği panel matrisine bölmeyi amaçlar
#her bir panel verilerin farklı alt kümesini gösterir
#facet_grid(yatay eksen~dikey eksen)

#örnek: mtcars veri setinde x=drat, y=qsec iken x=gear değişkenine facet plot çizin
library(ggplot2)
ggplot(mtcars, aes(x = drat, y = qsec)) +
  geom_point() +
  facet_grid(.~gear)
#gear değişkeni dikey eksen üzerinde alt grafiklere bölünecektir.

#Soru: yatay cyl değişkenine göre facet plot çizimi
ggplot(mtcars, aes(x = drat, y = qsec)) +
  geom_point() +
  facet_grid(cyl~.)

ggplot(mtcars, aes(x=drat, y=qsec))+
  geom_point()+facet_grid(cyl~., scales="free", space="free")

#Soru:yatayda cyl, dikeyde gear değişkenine göre plot çizimi
ggplot(mtcars, aes(x = drat, y = qsec)) +
  geom_point() +
  facet_grid(cyl~gear)

#SOru: mpg veri setinde
#x ekseninde displ, y ekseninde cyl değişkenleri olmak üzere
#serpilme grafiğini çizin, bu serpilme grafiğini p nesnesine atayın
p<-ggplot(mpg, aes(x=displ,y=cty))+
  geom_point()
p
#ALTERNATİF GÖSTERİM: facet_grid fonk.da (y-x) yerine facet satırşlarına
#mpg verilerinin serpilme grafiğini çizdiriniz
p+facet_grid(rows=vars(drv))
p+facet_grid(cols=vars(cyl))

p+facet_wrap(~cyl,ncol=2,nrow=2) #panelleri yan yana yada istediğimiz sütunda 
p+facet_grid(~cyl)
# satır-sütun bazında 2 degiskene göre facet plot
p+facet_grid(vars(drv), vars(cyl))
#eksenlerin ölçeklerinin sabit olmaması durumu
p+facet_grid(vars(drv), vars(cyl), scales="free")#ölçekler bağımsız hale gelir

###3 boyutlu grafkler çizme
install.packages("scatterplot3d")
library(scatterplot3d)
attach(mtcars)# veri setindeki değişkenlere direkt isimleri ile ulaşabiliriz yani veri seti, değişken ismi yapmadan direkt değişken ismini yazarak işlem yaparız.

scatterplot3d(x=disp, y=mpg, z=wt, main="3 boyutlu çizim")

attach(mtcars)
scatterplot3d(x=wt,
            y=disp,
            z=mpg,
            pch=16,
            highlight.3d=TRUE,
            type="h") #3 boyutlu grafiği çizgilerle birleştirme
#2 boyutlu regresyon doğrusu eklerken 3 boyutta düzlem eklem
d3<-scatterplot3d(x=wt,
                   y=disp,
                   z=mpg,
                   pch=16,type="h")
fit<-lm(mpg~wt+disp)  #lm modelini oluştur                
d3$plane3d(fit) #3 boyutlu grafiğe regresyon düzlemi ekler

###plot3d paketi ile örnekler:
#bu pakette çizim fonk.da önemli olanlar persp3D, surf3D, scatter3D
install.packages("plot3D")
library(plot3D)
#x ve y eksenlerini oluşturalım

x<-seq(-pi,pi,by=0.2)
y<-seq(-pi,pi,by=0.3)
grid<-mesh(x,y)
z<-with(grid,cos(x)*sin(y))
persp3D(z=z,x=x,y=y) #persp3D ile çizim

#SINAVA HAZIRLIK:
#1- ToothGrowth veri setini çağırın dose değişkenini kategorik hale getirin
head(ToothGrowth)
ToothGrowth$dose<-as.factor(ToothGrowth$dose)
#2-yeni veri setini df isismli değikene atayın
df<-ToothGrowth
df
#3-df veri setini x=dose ve y=len değişkenleri olmak üzere 
#group dose değişkenine göre kutu grafiğini çizdirin bp değişkenine atayın
library(ggplot2)
bp<-ggplot(df,aes(x=dose,y=len, group=dose))+
  geom_boxplot(aes(fill=dose))
bp
#4-dikey ve yatay yönde (sütun ve satır bazında ) supp değişkenine göre facet_grid() kullanarak kutu grafiği çiziniz
bp+facet_grid(supp~.) #satır
bp+facet_grid(.~supp)#sütun
#5-dose ve supp grup düzeylerine göre grafiği bölümlendirirn
bp+facet_grid(dose~supp)


#Clase 1
2+4 # esto es una suma
7*8-3^3+log10(3)
choose (5,3)
choose (41,6)
1/choose (41,6)

#creation de vectors y matrices
edades <-c(25,56,44)

nombre <- c("Maria", "Sergio", "Omar")

#uniendo vectores
base1 <-cbind(edades, nombre)
base1

base1[2,2] #quiero el elemento fila = 2, columna = 2
base1[1:2,1:2] #quiero fila 1 a 2, columna 1 a 2
base1[c(1,3),1:2]#fila 1 y 3 columna 1 a 2


m1 <-matrix(c(-1,0,5,3,7,7), nrow=3, ncol=2)
help("matrix")
m1


m11<-matrix(c(-1,0,5,3,7,7), nrow=3, ncol=2)
m11



## Example of setting row and column names
mdat <- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol = 3, byrow = TRUE,
               dimnames = list(c("row1", "row2"),
                               c("C.1", "C.2", "C.3")))
mdat




###bases de datos propias de R

attach (iris)
View (iris) # ver como tipo plantilla excel
head (iris) # ver cabeza de bd
tail(iris)
tail(iris, 3)

#suponer que solo quiero ver las filas 34 a 99  y columna  1 y 3
view(iris[34:99,c(1,3)])

#tambien se pueden pegar vectores por fila
v1<-c(3,4,-1,0
v2<-c(7,0,9,3)

vec_fila<-rbind(v1,v2)


#ejemplos de operaciones con matrices

m1 # dimensión 3x2
M11 # dimensión 3x2

#transpuesta
tm1<-t(m1) # dimensión 2X 3

#Producto punto
m1*m11

#producto cruz
m1%*%m11
m1%*%tm11


# consultar el nombre de las variables 

names (iris)
colnames(iris)
length(iris)
length(Petal.Length)
str(iris)


#Resumen estadistico (resumen, graficos (base a tabla de tendencias ), )
View(table(Species))
barplot(table(Species), col = "red" )

#largo del petalo
summary(Petal.Length)
var(Petal.Length)
sd(Petal.Length)
hist(Petal.Length, col = "SteelBlue",
main = "Histograma",
xlab= "Largo del Petalo (cm)",
ylab= "Frecuencia")

# Separar el largo de petalo por especie
# Graficar por separado los 3 pasos
#En un solo gráfico mostrar las tres especies

PL_setosa<-Petal.Length[Species=="setosa"]
summary(PL_setosa)
PL_versicolor<-Petal.Length[Species=="versicolor"]
summary(PL_versicolor)
PL_virginica<-Petal.Length[Species=="virginica"]
summary(PL_virginica)

#Regulando el eje X
par(mfrow=c(3,1))
hist(PL_setosa, col="red", xlim= c(1,7))
hist(PL_versicolor, col= "steelblue", xlim= c(1,7))
hist(PL_virginica, col= "magenta", xlim= c(1,7))

#regulando el eje y

par(mfrow=c(1,1))
hist(PL_setosa, breaks =seq(1,2, by=0.5),  col="red", ylim = c(0,20))
hist(PL_versicolor,breaks =seq(1,2, by=0.5), col= "steelblue", ylim = c(0,20))
hist(PL_virginica, breaks =seq(1,2, by=0.5),col= "magenta", ylim = c(0,20))

seq(1,10, by=0.5)


#regulando eje x, y y breaks
par(mfrow=c(3,1))
hist(PL_setosa, col="red", xlim= c(1,7), ylim = c(0,40), 
     breaks =seq(1,2, by=0.5))
hist(PL_versicolor, col= "steelblue", xlim= c(1,7), ylim = c(0,20), 
     breaks =seq(3,5.5, by=0.5))
hist(PL_virginica, col= "magenta", xlim= c(1,7), ylim = c(0,20),
     breaks =seq(4.5,7, by=0.5))

#para unir los 3 histogramas
par(mfrow=c(1,1))
hist(PL_setosa, col="red", xlim= c(1,7), ylim = c(0,40), 
     breaks =seq(1,2, by=0.5), main = "Histograma",
     xlab = "Largo del Petalo",
     ylab = "Frecuencia")
hist(PL_versicolor, col=rgb(0,0,1,0.8), xlim= c(1,7), ylim = c(0,20), 
     breaks =seq(3,5.5, by=0.5), main = "",
     xlab = "",
     ylab = "",
     add=TRUE)
hist(PL_virginica, col=rgb(1,0,1,0.4), xlim= c(1,7), ylim = c(0,20),
     breaks =seq(4.5,7, by=0.5),
     main = "",
     xlab = "",
     ylab = "",
     add=TRUE)

legend("topright",
       legend= c("setosa", "versicolor", "virginica"),
       fill = c("red", rgb(0,0,1,0.8),rgb(1,0,1,0.4)))
   

#parentesis

base1<-as.data.frame(cbind(edades, nombres))
str(base1)
mean(base1$edades)


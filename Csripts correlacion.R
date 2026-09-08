# Importar datos de Bosque

datos <- read.csv("bosque.csv", header = T)


## Distribución de pares de datos
plot(datos$diametro, datos$altura, 
pch = 19, col = "red",
xlab = "variable independiente (dbh),
ylab = "variable dependiente (h)")


## pruebas de normalidad y boxplot de las variables
shapiro.test(datos$diametro)
boxplot(datos$diametro)
hist(datos$diametro)

shapiro.test(datos$altura)
boxplot(datos$altura)
hist(datos$altura)


datos$dbh_log <- log10(datos$diametro)
datos$dbh_spr <- sprt(datos$diametro)


hist(datos$dbh_log)



## Prueba de correlación no paramétrica

cor.test(datos$diametro, datos$altura, method = "pearson")




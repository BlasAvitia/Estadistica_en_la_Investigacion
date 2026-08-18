# Blas Avitia Arellano
# 2268999
# 18/08/2026

#Importar Datos----
# Función read.csv importa datos de excel a R

IE <- read.csv("Vivero.csv", header = T)
IE$Tratamiento <- as.factor(IE$Tratamiento)

# Revisar-----
# Revisar solo una porción de datos
head(IE) # Primeras filas de BD IE
tail(IE) # Ultimas filas de BD IE

# Graficar----

hist(IE$IE,
     main = "",
     xlab = "Índice",
     ylab = "Frecuencia",
     ylim = c(0,12),
     col = "lightblue")


 
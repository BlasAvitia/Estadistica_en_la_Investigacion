## Blas Avitia Arellano
## 2327168
## 07/09/2026

## Laboratorio de la semana 3

## Parte 1: Importar datos desde archivo csv

trees<-read.csv("DBH_1.csv",header=TRUE)
head(trees)

## Ingresar datos a la consola de R

dbh<-c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1, 
       14.5, 7.7, 15.6, 15.9, 10.0, 17.5, 20.5, 7.8, 27.3, 9.7, 6.5, 
       23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8)


## Accesar datos de Internet

url<-"https://www.agricultura.gob.mx/sites/default/files/sagarpa/document/2025/07/11/2245/14072025-actividades-inspeccion-movilizacion.csv"

inspeccion <- read.csv(url)

head(inspeccion)

prof_url_2 <- paste0("https://www.agricultura.gob.mx/sites/default/",
"files/sagarpa/document/2025/07/11/2245/",
"14072025-actividades-inspeccion-movilizacion.csv")


senasica <- read.csv(prof_url_2)

## Ingresar datos desde Dropbox
## Se instaló la paquetería repmis

library(repmis)

conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
## Tener mucho cuidad de teclear bien la dirección url o al copiar y pegar

head(conjunto)

library(readr)
## Se instaló la paqueteria de readr para poder trabajar mas ágil


file <- paste0("https://raw.githubusercontent.com/mgtagle/", 
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")

inventario <- read_csv(file)
head(inventario)


## PARTE 2 Operaciones con la base de datos

mean(trees$dbh) 

## Aqui es importante que el encabezado de la columna esté correcto para que lo corra bien, ya que si estan algunas letras diferentes no lee correcto.

sd(trees$dbh)

## Seleccion mediante restricción

## Restricciones mas empleadas son igual o mayor, mayor que, igual que, menor o igual, menor que y no igual
## Esto nos ayuda a encontrar valores específicos de nuestras bases de datos


sum(trees$dbh < 10)


which(trees$dbh < 10)


trees.13 <- trees[!(trees$Parcela=="2"),]

trees.13



trees.1 <- subset(trees, dbh <= 10)


head(trees.1)


mean(trees$dbh)

mean(trees.1$dbh)


## PARTE 3 Representación gráfica Histogramas

## Para practicar este tema trabajamos con la siguiente base de datos

mamiferos<-read.csv("https://www.openintro.org/data/csv/mammals.csv")

## Se trabajará con la variable total_sleep para generar un histograma.


hist(mamiferos$total_sleep)


# Para modificar el código y obtener un histograma mas presentable y persoanlizado 
hist(mamiferos$total_sleep, #Datos con los que estamos trabajando
     xlim = c(0,20), ylim = c(0,14), # Cambiar los limites de x & y
     main = "Total de horas sueño de las 39 especies", # Cambiar el titulo
     xlab = "Horas sueño", # Cambiar eje de las x
     ylab = "Frecuencia", # Cambiar eje de las y
     las = 1, # Cambiar orientacion de y
     col = "navajowhite") # Cambiar color de las barras

# Ejercicio de Barplot o gráfico de barras

data("chickwts")
head(chickwts[c(1:2,42:43,62:64),])

# Ejercicio para Acomodar datos en columnas


feeds <- table(chickwts$feed)
feeds

barplot(feeds)
## Se acomodaron los datos y los gráficos en orden alfabético.

## Ejercicio para ordenar de forma decreciente las barras


barplot(feeds[order(feeds, decreasing = TRUE)])

## Ejercicio de personalización de la gráfica

barplot(feeds[order(feeds)], 
        col = "#006600", main = "Frecuencias por tipo de alimentacion",
        xlab = "Número de pollos", ylab = "", las=1, horiz= TRUE)

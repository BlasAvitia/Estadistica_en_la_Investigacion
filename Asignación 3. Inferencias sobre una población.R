## Blas Avitia Arellano
## 2327168
## 08/09/2026

## Objetivo
## Realizar la prueba de t student para una muestra de datos. Lo cual permite evaluar si la media de una población puede considerarse estadísticamente igual a un valor de referencia

## HIPÓTESIS
## Hipótesis nula (H0): No existe diferecnia significativa en los diámetros de los árboles analizados
## Hipótesis alterna (H1): Existen diferencias significativas en los diámetros de los árboles con respecto a la media

## PRUEBAS
## Se realizará una prueba de dos colas porque se espera que H0: µ≠µ0, pero no conocemos si es mayor o menor al valor de 16.5 cms


## EJERCICIO 3.1
## Los datos utilizados en este ejercicio proceden del libro Introductory probability & statiscs applications for forestry & natural sciens de Kozak et al. (2008).
## El cuadro 1 presenta una muestra de inventario forestal realizado en 50 árboles, en el cual se registraron siete variables. Para este ejercicio se utilizarpa la variable Diámetro, que representa el diámetro de los árboles de un rodal de bosque templado.

## A partir de registros históricos del área, se considera que el diámetro medio de referencia es de 16.5 cms.

## Se desa determinar si el diámetro medio de los árboles de la muestra difiere significativamente de 16.5 cms

## Los datos del inventario se importaron desde el repositorio de GitHub.

## URL de los datos

url <- paste0("https://raw.githubusercontent.com/mgtagle/",
              "Estadistica_Investigacion_2026/refs/heads/main/", 
              "Datos/Crudos/cuadro1.csv")

              

## Importar los datos directamente desde GitHub
cuadro1 <- read.csv(url, header = TRUE)


## Revisar los datos
head(cuadro1)
str(cuadro1)

## Calcular la media
mean(cuadro1$Diametro)

## Obtener Desviación Estándar
sd(cuadro1$Diametro)

## Realizar prueba de t student de dos colas
t.test(cuadro1$Diametro, mu = 16.5, alternative = "two.sided")


## Identificar los resultados
  * Estadístico de t=-1.547
  * Grados de Libertad=49
  * Valor de p=0.1238
  * Media de la muestra=15.794
  * Intervalo de confianza al 95%= 14.87689-16.71111

## Con α=0.05 indicar si se rechaza o no se rechaza H0
## NO SE RECHAZA LA HIPOTESIS NULA (H0).

## CONCLUSIÓN
## De acuerdo con los datos analizados, no existe diferencia estadísitcamente significativa, entre el diámetro medio de referencia de 16.5 cms y la media de la muestra de 15.794. El valor de referencia se encuentra dentro del rango de 14.87 cm y 16.71 cms, con un intervalo de confianza del 95%. Por esta razón no se rechaza la Hipótesis nula (H0).



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
## Estadistico de t=-1.547
## Grados de Libertad=49
## Valor de p=0.1238
## Media de la muestra=15.794
## Intervalo de confianza al 95%= 14.87689-16.71111

## Con α=0.05 indicar si se rechaza o no se rechaza H0
## NO SE RECHAZA LA HIPOTESIS NULA (H0).

## CONCLUSIÓN
## De acuerdo con los datos analizados, no existe diferencia estadísitcamente significativa, entre el diámetro medio de referencia de 16.5 cms y la media de la muestra de 15.794. El valor de referencia se encuentra dentro del rango de 14.87 cm y 16.71 cms, con un intervalo de confianza del 95%. Por esta razón no se rechaza la Hipótesis nula (H0).

## PREGUNTAS DE REFLEXIÓN
## ¿El intervalo de confianza del 95% contiene el valor de referencia de 16.5 cms?
## Si se encuentra entre el rango de 14.87689-16.71111

## ¿Cómo se relaciona este resultado con la desición obtenida mediante el valor de p?
## Aunque la media obtenida de la muestra fue de 15.79 cms, la prueba estadística nos arroja un valor de p=0.1283 que es mayor a 0.05 demuestra que la variación puede ser atribuible al azar.


## EJERCICIO 3.2

## Una empresa comercializa alimento para venados en costales cuyo contenido neto declarado es de 80kg. Un consumidor sospecha que, en promedio, los costales contienen menos de los 80kg anunciados.

## Para evaluar esta afirmación, se seleccionaron aleatoriamente y pesaron con precisión 44 costales. Se desea determinar si existe evidencia estadística suficiente para concluir que el peso neto de los costaleses menor de 80kg, utilizando un nivel de significancia de:
## El planteamiento de la hipotesis es:

## Ho: µ=80
## H1: µ<80

## En este caso se utiliza una prueba unilateral de cola izquierda, porque la pregunta de investigación establece explícitamente que se desea determinar si la media es menor que 80kg.

## Se ingresan los datos

costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94, 80.7, 82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89, 82.95, 73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01, 80.47, 76.23, 78.89, 77.14, 69.94, 78.54, 79.7, 82.45, 77.29, 75.52, 77.21, 75.99, 81.94, 80.41, 77.7)


## Explique con sus propias palabras qué representan H0 y H1
## La hipótesis nula H0, nos indica en este caso que la media del peso del costal es igual a 80kg, y la Hipótesis alterna H1 indica que el valor de la media del peso de los costales es menor a 80kg


## ¿Por qué corresponde utilizar una prueba de una sola cola?
## Porque se quiere conocer si el valor de la media del peso de los costales es menor al declarado, es decir menor al valor de referencia


## Calcule la media y desviación estándar de los 44 costales

mean(costal)

sd(costal)


## Realice la prueba de t student para la muestra
t.test(costal, mu = 80, alternative = "less")


## Estadístico t; -2.3644
## Grados de libertad;  43
## Valor de p;  0.01132
## media observada; 78.91068
## Compare el valor de p con α=0.05;  el valor de p está por debajo del valor de α


## CONCLUSIÓN
## De acuerdo con el valor de p(0.1132), es menor que el nivel de significancia α=0.05, se rechaza la Hipótesis nula. Esto significa que existe evidencia estadística suficiente para concluir que la media de los pesos de los costales es significativamente menor (78.91068kg), que el peso declarado por el empaque del alimento (80kg).





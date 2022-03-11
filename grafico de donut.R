# Para la realización de los graficos utilizaremos la librería ggplot2 que es un paquete de visualización de datos de R

#Para instalar paquetes en R ejecutamos el siguiente comando:
install.packages("ggplot2")
#Para utilizar nuestros paquetes ya instalados podemos ejecutar el siguiente comando:
library(ggplot2)

#GRÁFICO DE DONUT
#Creamos un dataframe con los valores que buscamos graficar:
df <- data.frame(value = c(5, 2, 9))

hsize <- 3 #Propiedad que modifica el tamaño del centro, si incrementa(reduce) el valor entonces el centro será más grande(pequeño)

#Realizamos el gráfico de donut:
ggplot(df, aes(x = hsize, y = value, fill = c("Creative Commons", "Copyright", "Sin licencia"))) + #ggpplot() <- Creamos un objeto de la libreria ggplot2 y asignamos sus caracteristicas
  geom_col(color = "black") + #geom_col() <- Propiedad que permite elegir el color de los bordes
  geom_text(aes(label = value), position = position_stack(vjust = 0.5)) + #geom_text <- Propiedad que permite añadir textos o etiquetas
  coord_polar(theta = "y") + #coord_polar() <-Propiedad para colocar el gráfico en coordenadas polares.
  scale_fill_brewer(palette = "GnBu") + #scale_fill_brewer() <- Propiedad para definir la paleta de colores del gráfico
  xlim(c(.2, hsize + 0.9)) + #xlim() <- Propiedad que ayuda estableciendo los límites del eje X 
  theme(panel.background = element_rect(fill = "white"), #theme() <- Propiedad que nos permite crear un estilo personalizado para el gráfico
        axis.title = element_blank(), 
        axis.ticks = element_blank(),
        axis.text = element_blank()) + 
  guides(fill = guide_legend(title = "Licencias")) + #guides() <- Propiedad para definir el título de la leyenda
  ggtitle("LICENCIAS EN LAS FUENTES DE BASES DE DATOS")  #ggtitle <- Propiedad para colocar el título del gráfico

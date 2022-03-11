#Para la realización de los graficos utilizaremos la librería ggplot2 que es un paquete de visualización de datos de R
#El paquete treemapify permite crear treemaps en ggplot2. 

#Para instalar paquetes en R ejecutamos el siguiente comando:
install.packages("ggplot2")
install.packages("treemapify")
#Para utilizar nuestros paquetes ya instalados podemos ejecutar el siguiente comando:
library(ggplot2)
library(treemapify)

#TREEMAPS
#Creamos dos vectores con lo datos que vamos a graficar:
Tema <- c("Biodiversity", "Biomedical", "Life Sciences", "Biological", "Sin tema" )
BD <- c(543, 4205, 3074, 11166, 7855)

#Creamos un dataframe con los vectores creados anteriormente:
df <- data.frame(Tema, BD) 
df

#Realizamos el Treemaps
ggplot(df, aes(area = BD, fill = Tema, label = paste (BD, "Bases de datos", sep = "\n"))) + #ggpplot() <- Creamos un objeto de la libreria ggplot2 y asignamos sus variables dentro de "aes"
  geom_treemap() + #geom_ bar() <- Propiedad para realizar el treemaps
  geom_treemap_text(colour = "Black", place = "centre", size = 15) + #geom_treemap_text() <- Propiedad que ayuda a agregar etiquetas a cada porción del treemap
  scale_fill_brewer(palette = "Blues") 


# graficos-en-R.
Cómo realizar gráficos usando R



- Gráfico de barras

#Para la realización de los graficos utilizaremos la librería ggplot2 que es un paquete de visualización de datos de R

#Para instalar paquetes en R ejecutamos el siguiente comando:
install.packages("ggplot2")
#Para utilizar nuestros paquetes ya instalados podemos ejecutar el siguiente comando:
library(ggplot2)

#GRÁFICO DE BARRAS
#Creamos dos vectores con lo datos que vamos a graficar:
fuente <- c("A knowledge graph to interpret clinical proteomics data","Biodatabases",
            "Biodiversity Information Projects of the World TDWG","Biodnet","Bioregistry","Biotools",
            "Catalog of life datasets","Database Commons","Identifiers.org","Linked Open Data Life Sciences",
            "Nucleic Acid Research Database","Re3data","Scicrunch","The Biodiversity Informatics Landscape", 
            "Towards a catalogue of biodiversity databases","Wikidata")

registros <- c(26, 998, 25, 211, 1318, 3113, 165, 5438, 775, 
               1301, 1645, 530, 2992, 74, 226, 976)

#Creamos un dataframe con los vectores creados anteriormente:
df = data.frame(fuente, registros)
df

#Creamos un vector que incluye los códigos de los colores en formato hexadecimal que ocuparemos para las barras de nuestro grafico
colores <- c("#458CFF", "#a0dcff", "#82c2ff", "#63a7ff", "#458CFF", "#BEF7FF", "#a0dcff", "#82c2ff", "#63a7ff", 
             "#458CFF", "#BEF7FF", "#a0dcff", "#82c2ff", "#63a7ff", "#458CFF", "#BEF7FF")

#Realizamos el grafico de barras
ggplot() + geom_bar(data = df, aes(x= fuente, y= registros), #geom_ bar() <- Propiedad para realizar el grafico de barras
                    stat = 'identity', fill = colores) + #fill = colores <- Propiedad para indicar los colores para las barras
  coord_flip() +  #coord_flip() <- Propiedad que ayuda a colocar las barras de manera horizontal
  ggtitle("COLECCIÓN DE BASES DE DATOS") + #ggtitle <- Propiedad para colocar el título del gráfico
  geom_text(aes(y=registros, x=fuente, label= registros, vjust= 0.1 , hjust= -0.20)) + #geom_text <- Propiedad que permite añadir textos o etiquetas
  #Con vjust = 0.1 ajustamos mejor la posición de cada etiqueta con respecto a las barras         
  theme_light() #theme_light <- Estilo del grafico, tambien podemos elegir: theme_bw(), theme_gray(), theme_dark(), theme_classic(), theme_minimal() y theme_void()
  
  El resultado es el siguiente:

![Rplot](https://user-images.githubusercontent.com/73009717/157800956-77b5c223-e1e7-438f-9cfc-8d90ae81be05.png)

- Gráfico de donut

![Rplot03](https://user-images.githubusercontent.com/73009717/157800959-113741c8-69b6-4bcd-af7b-a44f8033cb4e.png)

- Treemaps

![Rplot05](https://user-images.githubusercontent.com/73009717/157800961-7689f11e-76d0-4e8c-87dc-72ad372cb503.png)

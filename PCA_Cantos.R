datos <- read.csv("sp2.csv", header = T)
sp2 <- datos[,-1]

pcaModel <- prcomp( sp2[,-1], scale = T)

library(ggfortify)
autoplot(pcaModel, 
         data = sp2, 
         colour = 'Especie', 
         frame = TRUE, 
         frame.type = 'norm', 
         loadings = TRUE, 
         loadings.colour = 'blue',
         loadings.label = TRUE, 
         loadings.label.size = 3) + 
  theme_classic()

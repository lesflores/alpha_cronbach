#--------------------
# Alfa de Cronbach
# Ejemplo hipotético ilustrativo
#--------------------

#install.packages("psych")
library(psych) 

# Datos ficticios
set.seed(123)

n <- 50

datos <- data.frame (item1 = sample(1:5, n, replace = TRUE),
                     item2 = sample(1:5, n, replace = TRUE),
                     item3 = sample(1:5, n, replace = TRUE),
                     item4 = sample(1:5, n, replace = TRUE),
                     item5 = sample(1:5, n, replace = TRUE),
                     item6 = sample(1:5, n, replace = TRUE),
                     item7 = sample(1:5, n, replace = TRUE),
                     item8 = sample(1:5, n, replace = TRUE),
                     item9 = sample(1:5, n, replace = TRUE),
                     item10 = sample(1:5, n, replace = TRUE),
                     item11 = sample(1:5, n, replace = TRUE),
                     item12 = sample(1:5, n, replace = TRUE))

# Alfa de Cronbach 
alfa <- alpha(datos, check.keys = TRUE) #check.keys = TRUE identifica automáticamente los ítems que están negativamente correlacionados con la escala total
alfa

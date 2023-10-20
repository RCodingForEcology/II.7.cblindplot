install.packages("devtools")       
library(devtools)
devtools::install_github("ducciorocchini/cblindplot")
library(cblindplot)

image<- system.file("pic/imager.png", package = "cblindplot")
image_RGB <- terra::rast(image) #Usiamo la funzione rast() di terra
terra::plotRGB(image_RGB) #otteniamo un plot in RGB della nostra immagine

cblind.plot(image, cvd = "deuteranopia")
cblind.plot(image, cvd = "tritanopia")
cblind.plot(image, cvd = "protanopia")

#ESEMPIO NUMERO 2
library(terra)
library(devtools)
library(cblindplot)
devtools::install_github("ducciorocchini/imageRy")
library(imageRy)

map <- system.file("images/matogrosso_ast_2006209_lrg.jpg", package="imageRy")
map<- rast(map)
mapRGB<-plotRGB(map)

cblind.plot(map, cvd = "deuteranopia")
cblind.plot(map, cvd = "tritanopia")
cblind.plot(map, cvd = "protanopia")

 


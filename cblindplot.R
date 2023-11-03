#Example 1----
install.packages("remotes")
library(remotes)
remotes::install_github("ducciorocchini/cblindplot")
library(cblindplot) #call cblindplot

image_path <- system.file("pic/NDVI simple.png", package = "cblindplot")
image_RGB <- terra::rast(image_path) #we read the image
terra::plotRGB(image_RGB) #we get an RGB plot of our image

cblind.plot(image_RGB, cvd = "deuteranopia")
cblind.plot(image_RGB, cvd = "protanopia")
cblind.plot(image_RGB, cvd = "tritanopia")

#Example 2----
remotes::install_github("ducciorocchini/imageRy")
library(imageRy)

map_path <- system.file("images/NDVI rainbow.png", package="imageRy")
map <- terra::rast(map_path)
terra::plotRGB(map)

my_legend <- system.file("images/NDVI rainbow legend.png",package="imageRy")

my_terra_legend <- terra::rast(my_legend)
terra::plotRGB(my_terra_legend)

cblind.plot(map, legend = my_legend)

my_palette <- hcl.colors(7, palette = "Sunset")
cblind.plot(map, cvd = my_palette, legend = my_legend)

install.packages("here")
require(here)
getwd()
here()
read.csv("data/hab.sta.csv")
dat_habitat = data.frame(read.csv(here("data/hab.sta.csv")))
dat_habitat
slope = dat_habitat$slope
elevation = dat_habitat$elev
aspect = dat_habitat$aspect
hist(slope, main = "Habitat Slope", xlab = "Slope", ylab = "Frequency")
hist(elevation, main = "Habitat Elevation", xlab = "Elevation", ylab = "Frequency")
hist(aspect, main = "Habitat Aspect", xlab = "Aspect", ylab = "Frequency")
par(mfrow = c(1, 3))
basal_area = dat_habitat$ba.tot
line_point_slope = function(x, x1, y1, slope)
{
  get_y_intercept = 
    function(x1, y1, slope) 
      return(-(x1 * slope) + y1)
  
  linear = 
    function(x, yint, slope) 
      return(yint + x * slope)
  
  return(linear(x, get_y_intercept(x1, y1, slope), slope))
}
plot(x = elevation, y = basal_area, main = "Basal Area vs. Elevation", xlab = "Elevation", ylab = "Basal Area", col = "blue", cex = 0.5)
curve(line_point_slope(x, 600, 40, -0.1), add = TRUE)
plot(x = slope, y = basal_area, main = "Basal Area vs. Slope", xlab = "Slope", ylab = "Basal Area", col = "red", cex = 0.5)
curve(line_point_slope(x, 80, 80, 1), add = TRUE)
plot(x = aspect, y = basal_area, main = "Basal Area vs. Aspect", xlab = "Aspect", ylab = "Basal Area", col = "purple", cex = 0.5)
curve(line_point_slope(x, 250, 40, 0.1), add = TRUE)
par(mfrow = c(1, 3))
dev.off()



hist(elevation, main = "Habitat Elevation", xlab = "Elevation", ylab = "Frequency", col = "blue")
hist(slope, main = "Habitat Slope", xlab = "Slope", ylab = "Frequency", col = "red")
hist(aspect, main = "Habitat Aspect", xlab = "Aspect", ylab = "Frequency", col = "purple")
plot(x = elevation, y = basal_area, main = "Basal Area vs. Elevation", xlab = "Elevation", ylab = "Basal Area", col = "blue", cex = 0.5)
curve(line_point_slope(x, 600, 40, -0.1), add = TRUE)
plot(x = slope, y = basal_area, main = "Basal Area vs. Slope", xlab = "Slope", ylab = "Basal Area", col = "red", cex = 0.5)
curve(line_point_slope(x, 80, 80, 1), add = TRUE)
plot(x = aspect, y = basal_area, main = "Basal Area vs. Aspect", xlab = "Aspect", ylab = "Basal Area", col = "purple", cex = 0.5)
curve(line_point_slope(x, 250, 40, 0.1), add = TRUE)
par(mfrow = c(2, 3))
dev.off()
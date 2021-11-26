require(here)
dat_birds = read.csv(here("data", "bird.sta.csv"))
dat_habitat = read.csv(here("data", "hab.sta.csv"))
head(dat_birds)
head(dat_habitat)
hist(
  dat_birds$PUFI,
  main = "Histogram of Purple Finch Abundance\n by Pete Crump",
  xlab = "Purple Finch Abundance",
  col = 
    adjustcolor(col = "purple", alpha.f = 0.1),
  border = "purple",
  breaks = 0:7 - 0.5
)
pairs(
  dat_habitat[ c("elev", "slope", "aspect")],
  main = "Pairplot of Habitat Terrain Characteristics\n by Pete Crump",
  col =
    adjustcolor(col = "black", alpha.f = 0.7)
)

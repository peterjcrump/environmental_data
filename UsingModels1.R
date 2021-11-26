require(here)
catrate = read.csv(here("data", "catrate.csv"))
head(catrate)
summary(catrate)
hist(catrate$cat.rate, main = "Catastrophe Rate", xlab = "Catastrophe Rate")
shapiro.test(catrate$cat.rate)
t.test(x = catrate$cat.rate, mu = 0.28)
wilcox.test(x = catrate$cat.rate, mu = 2/7)

require(palmerpenguins)
penguin_dat = droplevels(subset(penguins, species != "Gentoo"))
summary(penguin_dat)
boxplot(
  flipper_length_mm ~ species, 
  data = penguin_dat,
  ylab = "Flipper Length (mm)")
dat_adelie = subset(penguin_dat, species == "Adelie")
dat_chinstrap = subset(penguin_dat, species == "Chinstrap")
shapiro.test(dat_chinstrap$flipper_length_mm)
shapiro.test(dat_adelie$flipper_length_mm)
par(mfrow = c(1, 2))
hist(dat_chinstrap$flipper_length_mm,
     main = "Chinstrap Penguin\nFlipper Lengths",
     xlab = "Flipper Length")
hist(dat_adelie$flipper_length_mm,
     main = "Adelie Penguin\nFlipper Lengths",
     xlab = "Flipper Length")
t.test(flipper_length_mm ~ species, data = penguin_dat)

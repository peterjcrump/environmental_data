require(palmerpenguins)

t.test(subset(penguins, species == "Gentoo")$flipper_length_mm)

t.test(x = subset(penguins, species == "Gentoo")$flipper_length_mm, mu = 218)

t.test(x = subset(penguins, species == "Gentoo")$flipper_length_mm,
       mu = 218,
       alternative = "less")

t.test(flipper_length_mm ~ species, data = subset(penguins, species != "Chinstrap"))

#conditional boxplot for questions 1-3
boxplot(
  body_mass_g ~ sex + species,
  data = penguins,
  main = "Penguin Body Mass Conditioned on Sex and Species",
  ylab = "Body Mass (g)",
  xlab = "Penguin Sex/Species",
  names = c("Female\nAdelie", "Male\nAdelie",  "Female\nChinstrap", "Male\nChinstrap", "Female\nGentoo", "Male\nGentoo")
)

#shapiro normality test on data
#the null hypothesis of the shapiro test is that the data is normally distributed
require(palmerpenguins)
dat_chinstrap = subset(penguins, species == "Chinstrap")
mean(dat_chinstrap$body_mass_g)
shapiro.test(dat_chinstrap$body_mass_g)
aggregate(
  body_mass_g ~ species,
  data = penguins,
  FUN = function(x) shapiro.test(x)$p.value
  )

#linear model
fit_species = lm(body_mass_g ~ species, data = penguins)
summary(fit_species)

#ANOVA
anova(fit_species)

#boxplot for penguin body mass
boxplot(body_mass_g ~ species, data = penguins)
#see above for boxplot conditioned on species and sex

#two-way additive ANOVA
fit_additive = lm(body_mass_g ~ sex + species, data = penguins)
summary(fit_additive)

#two-way interactive/factorial ANOVA
fit_interactive = lm(body_mass_g ~ sex * species, data = penguins)
summary(fit_interactive)

#factorial model for questions 4-5
fit_both = lm(body_mass_g ~ sex * species, data = penguins)
summary(fit_both)

#logical subsetting for question 8
dat_chinstrap = subset(penguins, species == "Chinstrap")
dat_chinstrap_fm = subset(dat_chinstrap, sex == "female")
mean(dat_chinstrap_fm$body_mass_g)

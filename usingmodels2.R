require(palmerpenguins)

t.test(subset(penguins, species == "Gentoo")$flipper_length_mm)

t.test(x = subset(penguins, species == "Gentoo")$flipper_length_mm, mu = 218)

t.test(x = subset(penguins, species == "Gentoo")$flipper_length_mm,
       mu = 218,
       alternative = "less")

t.test(flipper_length_mm ~ species, data = subset(penguins, species != "Chinstrap"))

boxplot(
  body_mass_g ~ sex + species,
  data = penguins,
  main = "Penguin Body Mass Conditioned on Sex and Species",
  ylab = "Body Mass (g)",
  xlab = "Penguin Sex/Species",
  names = c("Female\nAdelie", "Male\nAdelie",  "Female\nChinstrap", "Male\nChinstrap", "Female\nGentoo", "Male\nGentoo")
)


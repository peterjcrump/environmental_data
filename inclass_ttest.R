require(palmerpenguins)
dev.off()
dat_ade = droplevels(subset(penguins, species == "Adelie"))
dat_ade
hist(dat_ade$body_mass_g, main = "Adelie Penguins: Body Mass", xlab = "body mass (g)")
boxplot(
  dat_ade$body_mass_g ~ dat_ade$sex,
  main = "Adelie Penguin Body Mass",
  xlab = "Sex",
  ylab = "Body Mass (grams)"
  )
sex_f = droplevels(subset(dat_ade, sex == "female"))
sex_m = droplevels(subset(dat_ade, sex == "male"))
t.test(sex_f$body_mass_g, mu = 0)
t.test(sex_m$body_mass_g, alternative = "greater", mu = 3000)

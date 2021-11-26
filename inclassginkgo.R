require(here)
dat_ginkgo = read.csv(here("data", "ginkgo_data_2021.csv"))
boxplot(dat_ginkgo$notch_depth ~ dat_ginkgo$seeds_present, data = dat_ginkgo)
plot(
  x = dat_ginkgo$max_depth,
  y = dat_ginkgo$max_width,
  main = "Ginkgo Leaf Width vs. Depth",
  xlab = "Leaf Depth",
  ylab = "Leaf Width")

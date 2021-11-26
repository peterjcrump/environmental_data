require(here)
dat_bird = read.csv(here::here("data", "bird.sta.csv"))
dat_habitat = read.csv(here::here("data", "hab.sta.csv"))
dat_all = merge(dat_bird, dat_habitat)
summary(dat_all$WIWA)
hist(dat_all$WIWA)

dev.off()

hist(dat_all$WIWA, breaks = 0:7 - 0.5)

par(mfrow = c(1, 2))
dat = dat_all$WIWA
hist(dat, breaks = 0:(max(dat) + 1) - 0.5, main = "Histogram of\nWilson's Warbler counts")

dat = dat_all$GRJA
hist(dat, breaks = 0:(max(dat) + 1) - 0.5, main = "Histogram of\nGray Jay counts")

sum(log(dpois(x = dat_all$WIWA, lambda = 1.669)))

wiwa_counts = c(2, 6)
sum(log(dpois(x = wiwa_counts, lambda = 4)))

sum(log(dpois(x = dat_all$WIWR, lambda = 1.46)))

hist(
  dat_all$WIWR,
  breaks = 0:7 - 0.5,
  main = "Histogram of\nWinter Wren Counts",
  xlab = "Winter Wren Counts")

sum(log(dbinom()))

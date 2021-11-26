install.packages("here")
require(here)
here()
dat_catrate = read.csv(here("data", "catrate.csv"))
dat_delomys = read.csv(here("data", "delomys.csv"))
dat_rope = read.csv(here("data", "rope.csv"))
head(dat_catrate)
#catrate has 4 columns of numeric data
head(dat_delomys)
#delomys has 2 columns of numeric data
head(dat_rope)
#rope has 5 columns of numeric data
body_length = dat_delomys$body_length
hist(body_length, main = "Delomys Body Length by Pete Crump", xlab = "Body Length", ylab = "Frequency", col = "Purple")

rm(list = ls())

pol_n_predation = 26
pol_n_no_predation = 184
pol_n_total = pol_n_predation + pol_n_no_predation
pol_predation_rate = pol_n_predation / pol_n_total
  
psd_n_predation = 25
psd_n_no_predation = 706
psd_n_total = psd_n_predation + psd_n_no_predation
psd_predation_rate = psd_n_predation / psd_n_total

print(
  paste0(
    "The seed predation rate for Polyscias fulva is: ",
    round(pol_predation_rate, digits = 3))) 

print(
  paste0(
    "The seed predation rate for Pseudospondias microcarpa is: ",
    round(psd_predation_rate, digits = 3)))

predation_table = matrix(c(
  pol_n_predation,
  pol_n_no_predation,
  pol_n_total,
  pol_predation_rate,
  psd_n_predation,
  psd_n_no_predation,
  psd_n_total,
  psd_predation_rate),
  ncol = 2,
  byrow = FALSE)
colnames(predation_table) = c("Polyscias fulva (pol)", "Pseudospondias microcarpa (psd)")
rownames(predation_table) = c("Any Taken", "None Taken", "N", "Predation Rate")
predation_table = as.table(predation_table)
print(predation_table)

predation_proporion = 
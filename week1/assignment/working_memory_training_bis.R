

library(ggplot2)

print(getwd())

wm <- read.table('DAA.01.txt', header = T)

# class(wmt)
# names(wmt)
# View(wmt)

wm_splited <- split(wm, wm$cond) # created a list
wm_splited_des <- wm_splited$des # design
wm_splited_aer <- wm_splited$aer # aerobic


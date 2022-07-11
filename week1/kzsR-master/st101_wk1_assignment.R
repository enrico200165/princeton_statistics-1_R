# Coursera - Statistics 101, Week 1 Assignment / written by Zsolt Kazsi
# Read adat, plot histograms, get descriptives
library(psych) # load psych

# Step 1: Read adat into a adatframe called "ratings"
adat <- read.table("DAA.01.TXT",header=T)
adat1 <- split(adat,adat$cond)	# split (in 2) based on cond

# Step 2: Explore the contents of the adatframe
class(adat)
names(adat)

# Step 3: Get descriptive statistics
describe(adat1$aer)
describe(adat1$des)

# Step 4: Plot 8 histograms on one page
layout(matrix(c(1,2,3,4,5,6,7,8),4,2,byrow=TRUE)) # c stands for concatenate
hist(adat1$aer$pre.wm.s,xlab="Rating")
hist(adat1$aer$post.wm.s,xlab="Rating")
hist(adat1$aer$pre.wm.v,xlab="Rating")
hist(adat1$aer$post.wm.v,xlab="Rating")
hist(adat1$des$pre.wm.s,xlab="Rating")
hist(adat1$des$post.wm.s,xlab="Rating")
hist(adat1$des$pre.wm.v,xlab="Rating")
hist(adat1$des$post.wm.v,xlab="Rating")


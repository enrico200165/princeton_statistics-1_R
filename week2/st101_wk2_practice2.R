# Statistics One, Lecture 6, Week 2, example script 2 / written by Zsolt Kazsi
# Test/re/test reliability analysis, column format
library(psych) # load psych

# Step 1: Read data into a dataframe called "impact.col"
impact.col <- read.table("STATS1.EX.03.COL.TXT",header=T)

# Step 2: what kind of object is this?
names(impact.col)

# Step 3: get descriptive stat
describe(impact.col)

# Step 4: Correlations A & B
cor(impact.col$memory.verbal.A,impact.col$memory.verbal.B)
cor(impact.col$memory.visual.A,impact.col$memory.visual.B)
cor(impact.col$speed.vismotor.A,impact.col$speed.vismotor.B)
cor(impact.col$speed.general.A,impact.col$speed.general.B)
cor(impact.col$impulse.control.A,impact.col$impulse.control.B)

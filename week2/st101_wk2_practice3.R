# Statistics One, Lecture 6, Week 2, example script 2 / written by Zsolt Kazsi
# Test/re/test reliability analysis, column format
library(psych) # load psych

# Step 1: Read data into a dataframe called "impact.col"
impact.row <- read.table("STATS1.EX.03.ROW.TXT",header=T)

# Step 2: what kind of object is this?
names(impact.row)

# Step 3: get descriptive stat
describe.by(impact.row,impact.row$test)

# Step 4: Correlations A & B
cor(impact.row$memory.verbal[impact.row$test=="A"],impact.row$memory.verbal[impact.row$test=="B"])
cor(impact.row$memory.visual[impact.row$test=="A"],impact.row$memory.visual[impact.row$test=="B"])
cor(impact.row$speed.vismotor[impact.row$test=="A"],impact.row$speed.vismotor[impact.row$test=="B"])
cor(impact.row$speed.general[impact.row$test=="A"],impact.row$speed.general[impact.row$test=="B"])
cor(impact.row$impulse.control[impact.row$test=="A"],impact.row$impulse.control[impact.row$test=="B"])


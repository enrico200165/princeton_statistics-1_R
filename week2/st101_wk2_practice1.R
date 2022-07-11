# Statistics One, Lecture 6, Week 2, example script / written by Zsolt Kazsi
# Read data, plot histograms, get descriptives, examine scatterplots, run correlations

install.packages("psych")

library(psych) # load psych

# Step 1: Read data into a dataframe called "impact"
impact <- read.table("STATS1.EX.02.TXT",header=T)

# Step 2: what kind of object is this?
class(impact)
names(impact)

# Step 3: get descriptive stat
hist(impact$memory.visual,xlab="Visual memory",main="Histogram",col="red")

# Step 4: describe dataframe "impact"
describe(impact)

# Step 5: draw scatterplot
plot(impact$memory.verbal~impact$memory.visual,main="Scatterplot",ylab="Verbal memory",xlab="Visual memory")

# Step 5a: draw regression line. lm-function, used a lot later on (linear model)
# OBS: close both parentheses
abline(lm(impact$memory.verbal~impact$memory.visual),col="blue")

# Step 6: Correlations
cor(impact$memory.verbal,impact$memory.visual)

# Step 6a: Correlations, with significance test
cor.test(impact$memory.verbal,impact$memory.visual)

# Step 6b: Correlations, all in one matrix
cor(impact)



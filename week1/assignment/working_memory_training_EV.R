



plotfun <- function(col)  {
        plot(data[, col], ylab = names(data[col]), type = "l")
        
        par(ask = TRUE)
        sapply(seq(1, length(data), 1), plotfun)
}


assignment <- function () {
#        library(ggplot2)
        library(psych)
        
        
        
        data <- read.table("DAA.01.txt")
        print(head(data))
        
        print(class(data))
        
        
        print(names(data))
        
        layout(matrix(1:4,2,2,byrow = TRUE))
        
        hist(as.numeric(data[,2]), xlab = "pippo" ,main = "pluto")
        hist(as.numeric(data[,3]), xlab = "pippo")
        hist(as.numeric(data[,4]), xlab = "pippo")
        hist(as.numeric(data[,5]), xlab = "pippo")
        
        
        
        data
}
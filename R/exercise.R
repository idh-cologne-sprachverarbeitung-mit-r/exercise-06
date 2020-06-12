#a)

a <- function(x,y) { 
  z <- x ^ (length(y)*mean(y))
  return(z)
}

a(5,c(1,2,3))


#b)

w <- readLines("../data/tokenized-juliet.txt")

b <- w[5]


#c)

c <- c(mean(nchar(w)), sd(nchar(w)))

#d)

v <- readLines("../data/tokenized-romeo.txt")

name <- c("Juliet", "Romeo")
numSentences <- c(length(w),length(v))
numWords <- c(sum(sapply(strsplit(w, " "), length)),sum(sapply(strsplit(v, " "), length)))
ttr <- c(ttr(w),ttr(v))
ttrfnct <- function(x) { length(levels(factor(x)))/length(x) }


d <- data.frame(name, numSentences, numWords, ttr)


#e)


ecsv <- read.csv(file ="romeo-and-juliet.csv")

RowMostWords <- ecsv[which.max(ecsv$numOfWords),]
e <- RowMostWords$name

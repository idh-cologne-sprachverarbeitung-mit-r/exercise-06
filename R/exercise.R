#a

a <- function(numero, vettore) {
  potenza <- (length(vettore)*mean(vettore))
  risultato.numero <- numero^potenza
  return(risultato.numero)
}

#b

readLines("data/tokenized-juliet.txt")
Juliet <- readLines("data/tokenized-juliet.txt")
b <- Juliet[5]

#c

value.inter <- nchar(Juliet)
value1 <- mean(value.inter)
value2 <- sd(value.inter)
c <- c(value1, value2)

#d

Juliet <- readLines("data/tokenized-juliet.txt")
Romeo <- readLines("data/tokenized-romeo.txt")

Juliet.split <- unlist(strsplit(Juliet, split=" "))
Romeo.split <- unlist(strsplit(Romeo, split=" "))

ttr <- function(x) { length(levels(factor(x)))/length(x) }
Juliet.ttr <- ttr(Juliet.split)
Romeo.ttr <- ttr(Romeo.split)

Juliet.num.words <- length(Juliet.split)
Romeo.num.words <- length(Romeo.split)

Juliet.num.sentences <- length(Juliet)
Romeo.length.sentences <- length(Romeo)

Juliet.name <- "Juliet"
Romeo.name <- "Romeo"

Juliet.vec <- c(Juliet.name, Juliet.num.sentences, Juliet.num.words, Juliet.ttr)
Romeo.vec <- c(Romeo.name, Romeo.length.sentences, Romeo.num.words, Romeo.ttr)

d <- data.frame(rbind(Juliet.vec, Romeo.vec))

names(d) <- c("name", "numSentences", "numWords", "ttr")

#e

last.df <- read.csv("data/romeo-and-juliet.csv")
last.df[order(last.df$numOfWords, decreasing = TRUE) ,] -> ordered.last.df
e <- ordered.last.df$name[1]

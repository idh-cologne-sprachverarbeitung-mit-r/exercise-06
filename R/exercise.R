a <- function(n, v) {
  n^(length(v)*mean(v))
}

juliet <- readLines("data/tokenized-juliet.txt")
b <- juliet[5]

c <- c(
  mean(nchar(juliet)),
  sd(nchar(juliet))
)

romeo <- readLines("data/tokenized-romeo.txt")

calculateTtr <- function(x) { length(levels(factor(x)))/length(x) }

fillDataFrame <- function(frame, name, tokens) {
  numSentences <- length(tokens)
  numWords = length(unlist(strsplit(tokens, " ")))
  ttr <- calculateTtr(tokens)
  rbind(frame, list(
    "name" = name, 
    "numSentences" = numSentences, 
    "numWords" = numWords, 
    "ttr" = ttr
  ))
}
d <- data.frame()
d <- fillDataFrame(d, "Juliet", juliet)
d <- fillDataFrame(d, "Romeo", romeo)
a <- function(n,v) {
	n**(length(v)*mean(v))
}

juliet <- scan("data/tokenized-juliet.txt", sep="\n", what=character(), quiet=TRUE)
b <- juliet[5]

c <- c(mean(nchar(juliet)),sd(nchar(juliet)))


# d)
romeo <- scan("data/tokenized-romeo.txt", sep="\n", what=character(), quiet=TRUE)
ttr <- function(x) { length(levels(factor(x)))/length(x) }

juliet_tokens <- unlist(strsplit(juliet," "))
romeo_tokens <- unlist(strsplit(romeo," "))

d <- data.frame(
	name=c("Juliet","Romeo"),
	numSentences=c(length(juliet),length(romeo)),
	numWords=c(length(juliet_tokens), length(romeo_tokens)),
	ttr=c(ttr(juliet_tokens), ttr(romeo_tokens))
)


df <- read.csv("data/romeo-and-juliet.csv")
e <- as.character(df[order(-df$numOfWords),"name"][1])
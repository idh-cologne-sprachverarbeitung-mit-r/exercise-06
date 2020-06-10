# a)
a <- function (num, vec) num^(length(vec)*mean(vec))

# b)
b <- readLines(con = "tokenized-juliet.txt")[[5]]

# c) 
c <- c(mean(nchar(readLines(con = "tokenized-juliet.txt"))), sd(nchar(readLines(con = "tokenized-juliet.txt"))))

# d)
s1 <- strsplit(readLines(con = "tokenized-juliet.txt"), "[.]")
countJulSen <- 0
for (i in 1:length(s1)) {
    countJulSen <- length(s1[[i]]) + countJulSen
}

s2 <- strsplit(readLines(con = "tokenized-romeo.txt"), "[.]")
countRomSen <- 0
for (i in 1:length(s2)) {
    countRomSen <- length(s2[[i]]) + countRomSen
}

s3 <- scan(file = "tokenized-romeo.txt", what = "character")
countRomWords <- 0 
for(i in 1:length(s3)) {
    if (s3[[i]] != "." & s3[[i]] != "," & s3[[i]] != "!" & s3[[i]] != "?" & s3[[i]] != "-") {
        countRomWords <- countRomWords + 1
    }
}

s4 <- scan(file = "tokenized-juliet.txt", what = "character")
countJulWords <- 0 
for(i in 1:length(s4)) {
    if (s4[[i]] != "." & s4[[i]] != "," & s4[[i]] != "!" & s4[[i]] != "?" & s3[[i]] != "-") {
        countJulWords <- countJulWords + 1
    }
}

ttr <- function(x) { 
    length(levels(factor(x)))/length(x) 
}

d <- data.frame("name" = c("Romeo", "Juliet"), "numSentences" = c(countRomSen, countJulSen), "numWords" = c(countRomWords, countJulWords), "ttr" = c(ttr(s3), ttr(s4)))

# e)
x <- read.table(file = "romeo-and-juliet.csv", sep = ",")
e <- x[[14, 2]]

    

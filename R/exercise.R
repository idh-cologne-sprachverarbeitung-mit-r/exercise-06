# a)
a <- function (num, vec) num^(length(vec)*mean(vec))

# b)
b <- readLines(con = "tokenized-juliet.txt")[[5]]

# c) 
c <- c(mean(nchar(readLines(con = "tokenized-juliet.txt"))), sd(nchar(readLines(con = "tokenized-juliet.txt"))))

# d)
setwd("Documents/Studium/Informationsverarbeitung/SS20/Quantitative Textanalyse mit R/exercise-06/data")


s1 <- scan(file = "tokenized-juliet.txt", what = "character")
countJulSen <- 0
for (i in 1:length(s1)) {
    if (s1[[i]] == "." | s1[[i]] == "?" | s1[[i]] == "!" ) 
        countJulSen <- countJulSen + 1
}

s2 <- scan(file = "tokenized-romeo.txt", what = "character")
countRomSen <- 0
for (i in 1:length(s2)) {
    if (s2[[i]] == "." | s2[[i]] == "?" | s2[[i]] == "!" ) 
        countRomSen <- countRomSen + 1
}

countRomWords <- 0 
for(i in 1:length(s2)) {
    if (s2[[i]] != "." & s2[[i]] != "," & s2[[i]] != "!" & s2[[i]] != "?" & s2[[i]] != "-" & s2[[i]] != "" & s2[[i]] != ";") {
        countRomWords <- countRomWords + 1
    }
}

countJulWords <- 0 
for(i in 1:length(s1)) {
    if (s1[[i]] != "." & s1[[i]] != "," & s1[[i]] != "!" & s1[[i]] != "?" & s1[[i]] != "-" & s1[[i]] != "" & s1[[i]] != ";") {
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


    

    
    
    
    
    
    
    

library(testthat)

source("R/exercise.R")

test_that("a) yields the correct result", {
	ar <- a(5,c(1,2,3))
	expect_equal(ar, 15625)
	
	v <- c(0.869633468333632, 0.847552904393524, 0.654801340773702, 0.0408776034601033, 
0.710894370218739, 0.356116235721856, 0.135331169934943, 0.148186436388642, 
0.916002500802279, 0.401831512572244)
	
	ar <- a(2,v)
	expect_equal(ar, 33.85337,tolerance=1e-3)
})

test_that("b) yields the correct result", {
	expect_equal(b, "I’ll look to like , if looking liking move .")
})

test_that("c) yields the correct result", {
	expect_equal(c, c(41.825046, 8.045578), tolerance=1e-3)
})

test_that("d) yields the correct result", {
	expect_equal(class(d),"data.frame")
	expect_equal(nrow(d),2)
	expect_equal(ncol(d),4)
	expect_setequal(d$name, c("Juliet","Romeo"))
	expect_equal(d[d$name=="Romeo","numWords"], 5563)
	expect_equal(d[d$name=="Juliet","ttr"], 0.2522209, tolerance=1e-3)
	expect_equal(d[d$name=="Romeo","numSentences"], 591, tolerance=1e-3)
})

test_that("e) yields the correct result", {
	print(e)
	expect_equal(e, "Romeo")
})
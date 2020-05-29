# Exercise 6

**In General**: Please ask questions in the [ilias-Forum](https://www.ilias.uni-koeln.de/ilias/goto_uk_frm_3270419.html) for this course, so that others can also see the question and answer*.

*Please submit your solutions to this exercise until June 12th.*

The goal of this exercise is to become familiar with how to write your own functions, and to read in data stored in files.

## Step 1
Read the tutorial!

This is the last section we will take from this introduction. Please read [Chapter 7, "Reading data from files"](https://cran.r-project.org/doc/manuals/r-release/R-intro.html#Reading-data-from-files). I explained the most things in the Zoom session as well.

## Step 2

Clone this repository. The same as last week.

In the examples, I'll use "Textanalyse-mit-R", you should replace this with the path to your directory: `cd Textanalyse-mit-R`

Clone this repository: `git clone https://github.com/idh-cologne-sprachverarbeitung-mit-r/exercise-06.git`

Enter the directory `cd exercise-06`

Create a new branch for you: `git checkout -b USERNAME`.

## Step 3
Again (as last week), open the file `R/exercise.R` in your favorite text editor. Depending on your operating system and settings, double clicking may open an editor that came with the R installation. The directory `data` (top level in the repository) contains a few data files we will be using in this exercise.

- a) Write a function `a` that takes two arguments. The first argument is a number, the second a numeric vector. The function should return the number, to the power of the length of the vector times the mean of the vector. Thus, the call `a(5,c(1,2,3))` should return 5 to the power of 3*2=6, i.e., 15625. (There is no deeper sense in this function, except learning how to handle functions).
- b) The file `data/tokenized-juliet.txt` contains the entire text spoken by Juliet in Shakespeare's *Romeo and Juliet*. Each sentence is on a separate line. Read in the text *sentence-wise*, such that you end up with a vector with sentences as elements. Assign the 5th element (i.e., the 5th sentence) to the variable `b`.
- c) Assign a vector containing two values to variable `c`: The first value is the mean of the length of the sentences uttered by Juliet, the second value is the standard deviation. You will need the functions `nchar()`, `mean()` and `sd()` for this exercise.
- d) Create a data.frame that contains information about Romeo and Juliet. The data.frame should contain four columns: `name`, `numSentences`, `numWords`, and `ttr`. The first column contains the name of the character, the second the number of sentences, the third the number of words and the fourth the type-token-ratio. The data.frame should contain two rows, one for Romeo and one for Juliet. You can use `ttr <- function(x) { length(levels(factor(x)))/length(x) }` to calculate the type-token-ratio. The data.frame should be assigned to `d`.
- e) The directory `data` contains a file called `romeo-and-juliet.csv`. It contains a table in CSV format with information about the characters of Shakespeare's *Romeo and Juliet*. Please read in the file appropriately and assign the name of the most "talkative" (i.e., the character that speaks the most words) to the variable `e`. (You will probably need multiple lines).

## Step 4
Don't forget to save your file.
Now turning back to git: Add your file to the staging area (`git add R/exercise.R`), commit it (`git commit -m ""`, you need to fill in a commit message), and push it to the server (`git push --set-upstream origin BRANCHNAME`).

## Step 5

Wait a few minutes. Then go to https://github.com/idh-cologne-sprachverarbeitung-mit-r/exercise-06/actions, select your branch and watch for the results. If your commit has a green checkmark, you're good to go. If you see a red cross, there is a mistake in your code. In this case, you can click on the commit message and inspect the details of the mistake. After that, you should go back to step 4, fix the bug, and add/commit/push again.


mydata <- read.csv("BankingCreditProblem.csv") # or add path to where you stored it. use 'getwd()' to know the current directory of you R session.
# you can (and should) use the 'import dataset' function provided by Rstudio, it is much easier !

plot(mydata, col='blue', pch=20, ylab = "Loss (%)", xlab = "Loan to Value (%)")

# (a) With only what we learned today, can you estimate a linear model that would fit the points observed here ?


# (b) can you present it on one figure


# (c) what is the predicted loss value for a LTV of 100% ?


# (d) can we do the same thing without re-inventing the wheel and using lm() function ?
#### First D&A application ####

LoanToValue <- 1:50 / 20 + runif(50)
Loss <- exp(LoanToValue) + runif(50,max = 4)
Loss <- Loss/max(Loss) *100
LoanToValue <- LoanToValue *100

plot(LoanToValue,Loss, col='blue', pch=20, ylab = "Loss (%)", xlab = "Loan to Value (%)")

data <- cbind(LoanToValue,Loss)
write.csv(data,"BankingCreditProblem.csv",row.names = FALSE)

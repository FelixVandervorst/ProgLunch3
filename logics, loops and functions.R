#### Logics, Loops and functions in R ####

#### 1. Logics ####
a <- c(1,4,3)
b <- c(2,4,2)
c <- c(2,3,3)

# some simple logics 
a == b
a != b

a == c
a != c

a == b & a == c # and condition
a == b | a == c # or condition

# logics can be used in a if statement

if(a[1] == b[1] | a[1] == c[1]){
  print("This condition is hit")
} else{
  print("the condition is not respected")
}

# or'ifelse' provides a easy vectorised alternative.
ifelse(a == b | a == c, "This condition is hit", "the condition is not respected")  

#### 2. Loops ####

# first we create a simple loop which doubles 'a', 10 times
a <- 1
for (i in 1:10){
  a <- a + a
}
# 2^10 is the equivalent operation here.

# to spice it up we make 'a' a brownian motion
a <- rnorm(1) # rnorm draws a random number from a normal distribution
for (i in 1:10){
  a <- a + rnorm(1)
}

# now we want to follow exactly what is going on in our simulations.
nsim <- 100
a <- seq(0, 0, length.out = nsim)
a[1] <- rnorm(1)
for (i in 2:nsim){
  a[i] <- a[i-1] + rnorm(1)
}
plot(a, type = 'l', col = 'red', ylab = "return (%)", xlab= "time") # we just did one MonteCarlo simulation.

# 
a <- NULL # this is one way to initiate a variable with no type in R.
for (i in 1:11){
  if(i%%2 == 0){ # %% is the modulo operator
    a <- "some text"
  } else {
    a <- 3
  }
}
class(a) # what is the class of 'a', why ? why does it matter here ? Vectorise or apply

#### 3. functions

# we want a function which can divide two numbers but returns NA if divided by 0
myfunction <- function(arg1,arg2){
  if(arg2 == 0){
    result <- NA
  } else{
    result <- arg1 / arg2
  }
  return(result)
}

myfunction(arg1 = 2, arg2 = 0)
myfunction(arg1 = 2, arg2 = 1)

# we want a function which calculates the payoff of an option.
callpayoff <- function(x, strike = 10){
  result <- max(x,strike)
  return(result)
}

x <- 0:40
y <- lapply(x,FUN = callpayoff) # here we have 'applied' the function to each element in the list.
y <- lapply(x,FUN = callpayoff, strike = 20) # same but further assignement of the strike value in the function
plot(x,y, type='l', col = 'green',xlab = "Price of the underlying", ylab = "Payoff of the option")


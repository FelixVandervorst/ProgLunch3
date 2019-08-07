#### Manipulating objects in R ####

#### Two simple objects ####
a <- 1 # Here we assign value 1 to variable 'a'

print(a) # Here we tell R to print the value in 'a'. You can also just type 'a', the print is implicit.

b <- "this is a text" # we do the same with some text here.

class(a) # Here we ask R to show us the 'class' of variable 'a' (important for its internal representation, i.e. how to store it)
class(b) # Same with b

#### Extending to vectors ####

a <- c(1,2,3,4) # here 'c' is a function which combine values into a vector or List

a <- 1:4 # is this the exact same thing ?

a # here we print 'a'

a[1] # here we print only first element of 'a'

b <- c(1,3,"text")

#### Lists ####

mylist <- list()

mylist[[1]] <- a
mylist[[2]] <- b

mylist # this is reminiscent of which object type in VBA ?

#### Matrices ####

a <- matrix(c(1, 3, 5, 2), nrow = 2, byrow = TRUE) # what are we doing here ? you can type '?matrix' in command if unclear.
a
t(a) # what is this function t() doing ?

b <- matrix(c(1, 3, 2, 4), nrow = 2, byrow = TRUE)

mymatrix <- a %*% b # %*% denotes the matrix product
mymatrix # as usual we print c
mymatrix[1,2] # first row, second column of c

class(mymatrix) # why is it a matrix, did we tell R ?

#### Data.frames ####

mydata <- iris # iris is the typical data.frame

mydata # The usual print(you may also use View(mydata) for a detailed inspection). 
       #'mydata' is bigger that 'mymatrix', instead of inspecting element per element, we

summary(mydata) # what did we do here ?

mydata[1,2] # similar to matrices we can select row-col observations

mydata$Sepal.Length # we can also select a specific variable using '$' sign.

# Exercice: present a figure to illustrate a subset of my data
myrows <- 1:80 # we assign a sequence of number 1 to 80 myrows
mycols <- 3:5 # same here with columns.

mydata <- iris[myrows,mycols] # here we subset our initial data.frame 

plot(mydata$Petal.Length,mydata$Petal.Width,col=mydata$Species) # and use a plot method on data.frame to visualise it.

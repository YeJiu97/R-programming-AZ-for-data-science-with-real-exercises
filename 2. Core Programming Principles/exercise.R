# integer 类型
x <- 2L
typeof(x)

# double 类型
y <- 2.5
typeof(y)

# 如果是整数但是不添加L
z <- 2
typeof(z)

# complex类型
j <- 3 + 2i
typeof(j)

# double + integer
k <- 3 + 2L
typeof(k)

# character
a <- "a"
typeof(a)

# logical
t <- T
f <- F
typeof(t)
typeof(f)



A <- 10
B <- 5
C <- A + B
C

A / B
B / A

sqr <- sqrt(A)
sqr


name <- "John"
greeting <- "Hello"
message <- paste(greeting, name)
message


4 < 5
5 == 4
4 > 5
4 != 5


TRUE & TRUE
TRUE & FALSE
TRUE | FALSE
FALSE | TRUE

isTRUE(FALSE)
isTRUE(TRUE)
isFALSE(TRUE)
isFALSE(FALSE)


# while循环
flag <- 10
while(flag > 0){
  
  print("Hello R Programming")
  print(flag)
  flag <- flag - 1
  
}


# for循环
for (i in 1:5){
  print(i)
}

for (i in 5:10){
  print(i)
}


# if判断
rnorm(1)
rnorm(1)

x <- rnorm(1)
if (x > 1){
  answer <- "The random number's value is greater than 1"
} else {
  answer <- "The random number's value is smaller than 1"
}

print(answer)
print(x)


y <- rnorm(1)
if (y > 1){
  answer <- "The result value is greater than 1"
} else if (y < -1){
  answer <- "The result value is smaller than -1"
} else{
  answer <- "The result value is between 1 and -1"
}

print(answer)


# 使用while来配合if
flag <- 1

while(flag <= 10){
  
  z <- rnorm(1)
  
  if (z > 1){
    answer <- "The result value is greater than 1"
  } else if (z < -1){
    answer <- "The result value is smaller than -1"
  } else{
    answer <- "The result value is between 1 and -1"
  }
  
  print(answer)
  
  flag <- flag + 1
}

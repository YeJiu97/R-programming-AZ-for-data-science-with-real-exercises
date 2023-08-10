# 2. Core Programming Principles

## 变量

首先是integer类型：

```r
> # integer 类型
> x <- 2L
> typeof(x)
[1] "integer"
```

接着是double类型：

```r
> # double 类型
> y <- 2.5
> typeof(y)
[1] "double"
```

如果不添加L字母呢？

```r
> # 如果是整数但是不添加L
> z <- 2
> typeof(z)
[1] "double"
```

可以发现虽然2是一个整数，但是如果不添加L的话，会被当成double类型来存储。

接着是符合类型 complex：

```r
> # complex类型
> j <- 3 + 2i
> typeof(j)
[1] "complex"
```

如果是double+integer呢？

```r
> # double + integer
> k <- 3 + 2L
> typeof(k)
[1] "double"
```

字符串类型：

```r
> # character
> a <- "a"
> typeof(a)
[1] "character"
```

逻辑类型：

```r
> # logical
> t <- T
> f <- F
> typeof(t)
[1] "logical"
> typeof(f)
[1] "logical"
```

尝试操作变量：

```r
> A <- 10
> B <- 5
> C <- A + B
> C
[1] 15
> 
> A / B
[1] 2
> B / A
[1] 0.5
> 
> sqr <- sqrt(A)
> sqr
[1] 3.162278
```

字符串变量操作：

```r
> name <- "John"
> greeting <- "Hello"
> message <- paste(greeting, name)
> message
[1] "Hello John"
```

逻辑运算：

```r
> 4 < 5
[1] TRUE
> 5 == 4
[1] FALSE
> 4 > 5
[1] FALSE
> 4 != 5
[1] TRUE
```

反转：

```r
> !TRUE
[1] FALSE
> !FALSE
[1] TRUE
```

and和or：

```r
> TRUE & TRUE
[1] TRUE
> TRUE & FALSE
[1] FALSE
> TRUE | FALSE
[1] TRUE
> FALSE | TRUE
[1] TRUE
```

isTRUE()和isFALSE()：

```r
> isTRUE(FALSE)
[1] FALSE
> isTRUE(TRUE)
[1] TRUE
> isFALSE(TRUE)
[1] FALSE
> isFALSE(FALSE)
[1] TRUE
```

## While循环和For循环

循环如下所示：

```r
# while循环
flag <- 10
while(flag > 0){
  
  print("Hello R Programming")
  print(flag)
  flag <- flag - 1
  
}
```

运行的结果为：

```r
[1] "Hello R Programming"
[1] 10
[1] "Hello R Programming"
[1] 9
[1] "Hello R Programming"
[1] 8
[1] "Hello R Programming"
[1] 7
[1] "Hello R Programming"
[1] 6
[1] "Hello R Programming"
[1] 5
[1] "Hello R Programming"
[1] 4
[1] "Hello R Programming"
[1] 3
[1] "Hello R Programming"
[1] 2
[1] "Hello R Programming"
[1] 1
```

for循环如下所示：

```r
> # for循环
> for (i in 1:5){
+   print(i)
+ }
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
```

代码二：

```r
> for (i in 5:10){
+   print(i)
+ }
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
```

## IF判断

首先是rnorm：

```r
> # if判断
> rnorm(1)
[1] -0.8142808
> rnorm(1)
[1] 1.113695
```

接着我们来使用if进行配合判断：

```r
> x <- rnorm(1)
> if (x > 1){
+   answer <- "The random number's value is greater than 1"
+ } else {
+   answer <- "The random number's value is smaller than 1"
+ }
> 
> print(answer)
[1] "The random number's value is smaller than 1"
> print(x)
[1] -0.2728787
```

我们来实现一下多重判断：

```r
> y <- rnorm(1)
> if (y > 1){
+   answer <- "The result value is greater than 1"
+ } else if (y < -1){
+   answer <- "The result value is smaller than -1"
+ } else{
+   answer <- "The result value is between 1 and -1"
+ }
> 
> print(answer)
[1] "The result value is between 1 and -1"
```

使用while来进行循环：

```r
> # 使用while来配合if
> flag <- 1
> while(flag <= 10){
+   
+   z <- rnorm(1)
+   
+   if (z > 1){
+     answer <- "The result value is greater than 1"
+   } else if (z < -1){
+     answer <- "The result value is smaller than -1"
+   } else{
+     answer <- "The result value is between 1 and -1"
+   }
+   
+   print(answer)
+   
+   flag <- flag + 1
+ }
[1] "The result value is smaller than -1"
[1] "The result value is between 1 and -1"
[1] "The result value is between 1 and -1"
[1] "The result value is between 1 and -1"
[1] "The result value is between 1 and -1"
[1] "The result value is between 1 and -1"
[1] "The result value is between 1 and -1"
[1] "The result value is between 1 and -1"
[1] "The result value is greater than 1"
[1] "The result value is between 1 and -1"
```

## 大数法则

![Untitled](2%20Core%20Programming%20Principles%20e98eb2e2dd344a849ae4c21e13dfc935/Untitled.png)

![Untitled](2%20Core%20Programming%20Principles%20e98eb2e2dd344a849ae4c21e13dfc935/Untitled%201.png)

## 所有代码

```r
> # integer 类型
> x <- 2L
> typeof(x)
[1] "integer"
> 
> # double 类型
> y <- 2.5
> typeof(y)
[1] "double"
> 
> # 如果是整数但是不添加L
> z <- 2
> typeof(z)
[1] "double"
> 
> # complex类型
> j <- 3 + 2i
> typeof(j)
[1] "complex"
> 
> # double + integer
> k <- 3 + 2L
> typeof(k)
[1] "double"
> 
> # character
> a <- "a"
> typeof(a)
[1] "character"
> 
> # logical
> t <- T
> f <- F
> typeof(t)
[1] "logical"
> typeof(f)
[1] "logical"
> 
> 
> 
> A <- 10
> B <- 5
> C <- A + B
> C
[1] 15
> 
> A / B
[1] 2
> B / A
[1] 0.5
> 
> sqr <- sqrt(A)
> sqr
[1] 3.162278
> 
> 
> name <- "John"
> greeting <- "Hello"
> message <- paste(greeting, name)
> message
[1] "Hello John"
> 
> 
> 4 < 5
[1] TRUE
> 5 == 4
[1] FALSE
> 4 > 5
[1] FALSE
> 4 != 5
[1] TRUE
> 
> 
> TRUE & TRUE
[1] TRUE
> TRUE & FALSE
[1] FALSE
> TRUE | FALSE
[1] TRUE
> FALSE | TRUE
[1] TRUE
> 
> isTRUE(FALSE)
[1] FALSE
> isTRUE(TRUE)
[1] TRUE
> isFALSE(TRUE)
[1] FALSE
> isFALSE(FALSE)
[1] TRUE
> 
> 
> # while循环
> flag <- 10
> while(flag > 0){
+   
+   print("Hello R Programming")
+   print(flag)
+   flag <- flag - 1
+   
+ }
[1] "Hello R Programming"
[1] 10
[1] "Hello R Programming"
[1] 9
[1] "Hello R Programming"
[1] 8
[1] "Hello R Programming"
[1] 7
[1] "Hello R Programming"
[1] 6
[1] "Hello R Programming"
[1] 5
[1] "Hello R Programming"
[1] 4
[1] "Hello R Programming"
[1] 3
[1] "Hello R Programming"
[1] 2
[1] "Hello R Programming"
[1] 1
> 
> 
> # for循环
> for (i in 1:5){
+   print(i)
+ }
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
> 
> for (i in 5:10){
+   print(i)
+ }
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9
[1] 10
> 
> 
> # if判断
> rnorm(1)
[1] -0.2643784
> rnorm(1)
[1] 1.040043
> 
> x <- rnorm(1)
> if (x > 1){
+   answer <- "The random number's value is greater than 1"
+ } else {
+   answer <- "The random number's value is smaller than 1"
+ }
> 
> print(answer)
[1] "The random number's value is smaller than 1"
> print(x)
[1] -0.004335581
> 
> 
> y <- rnorm(1)
> if (y > 1){
+   answer <- "The result value is greater than 1"
+ } else if (y < -1){
+   answer <- "The result value is smaller than -1"
+ } else{
+   answer <- "The result value is between 1 and -1"
+ }
> 
> print(answer)
[1] "The result value is between 1 and -1"
> 
> 
> # 使用while来配合if
> flag <- 1
> 
> while(flag <= 10){
+   
+   z <- rnorm(1)
+   
+   if (z > 1){
+     answer <- "The result value is greater than 1"
+   } else if (z < -1){
+     answer <- "The result value is smaller than -1"
+   } else{
+     answer <- "The result value is between 1 and -1"
+   }
+   
+   print(answer)
+   
+   flag <- flag + 1
+ }
[1] "The result value is smaller than -1"
[1] "The result value is between 1 and -1"
[1] "The result value is greater than 1"
[1] "The result value is between 1 and -1"
[1] "The result value is greater than 1"
[1] "The result value is between 1 and -1"
[1] "The result value is between 1 and -1"
[1] "The result value is between 1 and -1"
[1] "The result value is between 1 and -1"
[1] "The result value is greater than 1"
```
# 3. Fundamentals Of R

## 向量

向量是 R 语言最基本的数据类型。

什么是向量：

![Untitled](3%20Fundamentals%20Of%20R%20ebf1c0c6d06d42ef8d6eacc5234a68f9/Untitled.png)

需要注意的地方在于：R语言的序列是从1开始的，而不是像别的编程语言一样从0开始的。这是因为R语言不是为了工程项目而诞生的，而是为了统计而诞生的。

一些代码：

```r
> # 由数字组成的向量
> vector_01 <- c(50, 34, 111, 7, 24, 631, 20, 4, 7, 21)
> typeof(vector_01)
[1] "double"
> 
> # 也可以使用is.numeric()来进行判断
> is.numeric(vector_01)
[1] TRUE
> is.double(vector_01)
[1] TRUE
> 
> # 如果需要是int，则需要使用L来进行表示
> vector_int <- c(1L, 2L, 3L, 4L, 5L)
> typeof(vector_int)
[1] "integer"
> is.numeric(vector_int)
[1] TRUE
> is.integer(vector_int)
[1] TRUE
> 
> 
> 
> # 由字符组成的向量
> vector_02 <- c("a", "b", "c", "2a", "yes", "no", "Aa")
> typeof(vector_02)
[1] "character"
> is.character(vector_02)
[1] TRUE
> 
> # 通过位置来访问对应的元素
> vector_02[1]
[1] "a"

```

使用while循环和for循环：

```r
> # 使用while来进行循环
> position = 1
> while (position < length(vector_02)){
+   
+   print(vector_02[position])
+   position = position + 1
+   
+ }
[1] "a"
[1] "b"
[1] "c"
[1] "2a"
[1] "yes"
[1] "no"
> 
> # for循环
> for (ele in vector_int){
+   print(ele)
+ }
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5

```

使用sqe()和rep()两个函数：

```r
> # seq函数
> seq_ele <- seq(1, 20)
> typeof(seq_ele)
[1] "integer"
> # seq函数和c()进行相互结合
> seq_vector <- c(seq(1, 20))
> seq_vector
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
> typeof(seq_vector)
[1] "integer"
```

然后是rep()函数：

```r
> # rep()函数
> rep_ele <- rep(3.14, 10)
> rep_ele
 [1] 3.14 3.14 3.14 3.14 3.14 3.14 3.14 3.14 3.14 3.14
> rep_vector <- c(rep(3.14, 10))
> typeof(rep_vector)
[1] "double"
```

seq()函数可以给出三个参数：

```r
> # seq函数进一步
> seq_deep <- seq(1, 51, 10)
> seq_deep
[1]  1 11 21 31 41 51
```

从1开始，在51或者51之前结束，每一个数字增加10。

## 向量运算

使用四则运算来对两个向量进行操作：

```r
> # 对vector进行操作
> vector_03 <- c(1, 2, 3, 4, 5)
> vector_04 <- c(6, 7, 8, 9, 10)
> 
> # 对应位置相加
> vector_sum <- vector_03 + vector_04
> vector_sum
[1]  7  9 11 13 15
> 
> # 对应位置相减
> vector_sub <- vector_04 - vector_03
> vector_sub
[1] 5 5 5 5 5
> 
> # 对应位置乘法
> vector_time <- vector_03 * vector_04
> vector_time
[1]  6 14 24 36 50
> 
> # 对应位置除法
> vector_div <- vector_04 / vector_03
> vector_div
[1] 6.000000 3.500000 2.666667 2.250000 2.000000
```

我们来尝试一下两个大小不一样的向量

```r
> # vector大小不一
> vector_short <- c(1, 2, 3)
> vector_long <- c(4, 5, 6, 7, 8, 9)
> vector_short + vector_long
[1]  5  7  9  8 10 12
```

可以发现是对小的vector进行循环加到大的vector上面。

如果大的vector不是小的vector的倍数呢？

```r
> # vector大小不一
> vector_short <- c(1, 2, 3)
> vector_long <- c(4, 5, 6, 7, 8)
> 
> vector_short + vector_long
[1]  5  7  9  8 10
Warning message:
In vector_short + vector_long :
  longer object length is not a multiple of shorter object length
```

## 函数

R语言提供了一些内置的函数：

```r
# 先确认一下当前的路径
getwd()

# R语言提供了一些内置的函数
rnorm()
c()
seq()
rep()
print()

is.numeric()
is.integer()
is.double()
is.character()

typeof()
sqrt()
paste()
```

如果我们不确定一个函数是怎么使用的，可以使用 ? 来进行查看：

```r
?rnorm()
```

得到的结果为：

![Untitled](3%20Fundamentals%20Of%20R%20ebf1c0c6d06d42ef8d6eacc5234a68f9/Untitled%201.png)

除了R语言提供的内置的函数，还可以使用自己定义的函数：

```r
function_name <- function(arg_1, arg_2, ...) {
    // 函数体
}
```

例子如下所示：

```r
# 写一个自己的函数
find.even.number <- function(max_number){
  
  for (i in 1:max_number){
    
    if (i %% 2 == 0){
      
      print(i)
      
    }
    
  }
  
}

find.even.number(20)
```

运行的结果为：

```r
> find.even.number(20)
[1] 2
[1] 4
[1] 6
[1] 8
[1] 10
[1] 12
[1] 14
[1] 16
[1] 18
[1] 20
```

函数可以有多个参数，并且在传递的时候可以指定对应的值：

```r
# 传递多个参数，并且对参数进行指定
new.find.even.number <- function(min_number, max_number){
  
  for (num in min_number : max_number){
    
    if (num %% 2 == 0){
      
      print(num)
      
    }
    
  }
  
}

# 传递的时候指定参数值
new.find.even.number(max_number = 100, min_number = 50)
```

运行的结果为：

```r
> new.find.even.number(max_number = 100, min_number = 50)
[1] 50
[1] 52
[1] 54
[1] 56
[1] 58
[1] 60
[1] 62
[1] 64
[1] 66
[1] 68
[1] 70
[1] 72
[1] 74
[1] 76
[1] 78
[1] 80
[1] 82
[1] 84
[1] 86
[1] 88
[1] 90
[1] 92
[1] 94
[1] 96
[1] 98
[1] 100
```

R语言对于参数的态度是“懒惰计算”，也就是说只有参数在被使用到的时候才会被调用，否则不会使用也不会报错：

```r
# 懒惰计算
non.cal <- function(x){
  
  print(10)
  
}
non.cal()
```

运行的结果为：

```r
> non.cal()
[1] 10
```

可以发现不会报错，因为x的值没有被使用到。
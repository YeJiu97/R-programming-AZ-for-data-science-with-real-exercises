# 由数字组成的向量
vector_01 <- c(50, 34, 111, 7, 24, 631, 20, 4, 7, 21)
typeof(vector_01)

# 也可以使用is.numeric()来进行判断
is.numeric(vector_01)
is.double(vector_01)

# 如果需要是int，则需要使用L来进行表示
vector_int <- c(1L, 2L, 3L, 4L, 5L)
typeof(vector_int)
is.numeric(vector_int)
is.integer(vector_int)



# 由字符组成的向量
vector_02 <- c("a", "b", "c", "2a", "yes", "no", "Aa")
typeof(vector_02)
is.character(vector_02)

# 通过位置来访问对应的元素
vector_02[1]

# 使用while来进行循环
position = 1
while (position < length(vector_02)){
  
  print(vector_02[position])
  position = position + 1
  
}

# for循环
for (ele in vector_int){
  print(ele)
}


# seq函数
seq_ele <- seq(1, 20)
typeof(seq_ele)
# seq函数和c()进行相互结合
seq_vector <- c(seq(1, 20))
seq_vector
typeof(seq_vector)


# rep()函数
rep_ele <- rep(3.14, 10)
rep_ele
rep_vector <- c(rep(3.14, 10))
typeof(rep_vector)


# seq函数进一步
seq_deep <- seq(1, 51, 10)
seq_deep



# 对vector进行操作
vector_03 <- c(1, 2, 3, 4, 5)
vector_04 <- c(6, 7, 8, 9, 10)

# 对应位置相加
vector_sum <- vector_03 + vector_04
vector_sum

# 对应位置相减
vector_sub <- vector_04 - vector_03
vector_sub

# 对应位置乘法
vector_time <- vector_03 * vector_04
vector_time

# 对应位置除法
vector_div <- vector_04 / vector_03
vector_div


# vector大小不一
vector_short <- c(1, 2, 3)
vector_long <- c(4, 5, 6, 7, 8)

vector_short + vector_long
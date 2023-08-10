# 测试
Salary

# 一些别的变量
Games
MinutesPlayed

# 创建矩阵
my.data <- 1:20
my.data

# 使用这些数据来创建矩阵
matrix_a <- matrix(my.data, 4, 5)
matrix_a

# 索引
matrix_a[1,]  # 第一行的所有的内容
matrix_a[,1]  # 第一列的所有的内容
matrix_a[2, 3]  # 第二行第三列的元素

matrix_b <- matrix(my.data, 4, 5, byrow = TRUE)
matrix_b


# 使用rbind()函数来进行创建
row_1 <- c(1, 2, 3, 4, 5)
row_2 <- c(6, 7, 8, 9, 10)
row_3 <- c(11, 12, 13, 14, 115)
matrix_rbind <- rbind(row_1, row_2, row_3)
matrix_rbind

matrix_rbind["row_1", 2]


# 给别名
Charlie <- 1:5
Charlie
names(Charlie) <- c("a", "b", "c", "d", "e")
Charlie
Charlie["c"]

# 去除别名
names(Charlie) <- NULL
Charlie


# 矩阵命名
temp.vex <- rep(c("a", "b", "c"), each = 3)
temp.vex

Bravo <- matrix(temp.vex, 3, 3)
Bravo

# 给row的名字
rownames(Bravo) <- c("How", "Are", "You")
Bravo

# 给column的名字
colnames(Bravo) <- c("I", "AM", "Fun")
Bravo

# 使用名字来查找元素
Bravo["How", "AM"]


# 矩阵操作
Games

# 行名与列名
rownames(Games)
colnames(Games)

# 查找数据
Games["DerrickRose", "2011"]



# FieldGoals
FieldGoals
FieldGoals / Games
round(FieldGoals / Games, 2)
round(MinutesPlayed / Games, 2)



# 了解 matplot函数
?matplot

matplot(FieldGoals)
matplot(t(FieldGoals))

matplot(t(FieldGoals/Games), type = "b", pch = 15:18, col=c(1:4, 6))
legend("bottomleft", inset = 0.01, legend = Players, col = c(1:4, 6), pch = 15 : 18, horiz = F)



# 子集 sebsetting
large_set <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
small_set <- large_set[c(1:3)]
small_set

Games
Games[1:3, 6:10]
Games[c(1, 10)]
Games[c(1, 10),]
Games[, c("2008", "2013")]



# 可视化
Data <- MinutesPlayed[1:3, ]
matplot(t(Data), type = "b", pch = 15 : 18, col = c(1:4, 6))
legend("bottomleft", inset = 0.01, legend = Players, col = c(1:4, 6), pch = 15 : 18, horiz = F)
Data


myplot <- function(data, rows){
  Data <- Points[rows, , drop = F]
  matplot(t(Data), type = "b", pch = 15 : 18, col = c(1:4, 6))
  legend("bottomleft", inset = 0.01, legend = Players, col = c(1:4, 6), pch = 15 : 18, horiz = F)
}

myplot(Salary, 1:2)

myplot(FieldGoals / Games, 1)
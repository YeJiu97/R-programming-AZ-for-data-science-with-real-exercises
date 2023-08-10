# 首先查看一下路径
getwd()

# 查看一下文件
dir()

# 导入数据
?read.csv

# 开始导入数据
population_df <- read.csv(file.choose())  # 需要手动导入数据
population_df <- read.csv("P2-Demographic-Data.csv")
population_df


# exploring dataset 探索数据

nrow(population_df)  # 查看行数
ncol(population_df)  # 查看列数

head(population_df)  # head()函数查看开头的几行数据
tail(population_df)  # tail()函数查看末尾的几行数据

head(population_df, n = 10)  # n = 10 来指定提供10行数据

str(population_df)  # str()函数查看数据结构

summary(population_df)  # summary()函数返回统计结果


# 使用 $ 符号
population_df[3, 3]  # 获得第三行，第三列的数据
population_df[3, 4]  # 获得第三行，第四列的数据

population_df[1, "Birth.rate"]


population_birth <- population_df$Birth.rate
population_birth
ncol(population_birth)

population_inter_2 <- population_df$Internet.users[2]
population_inter_2

population_inter_vec <- population_df$Internet.users[c(1, 2, 3)]
population_inter_vec



# 基础的操作
population_df[1:10, ]  # 获得子集
population_df[c(1, 5, 10), ]  # 获得1,5,10三行作为子集
is.data.frame(population_df[c(1, 2, 3),])  # 查看是否是data frame
is.data.frame(population_df[1,])  # 是data frame
is.data.frame(population_df[, 1]) # 不是data frame
population_df[, 1]

is.data.frame(population_df[, 1, drop = F])
population_df[, 1, drop = F]


population_df$Birth.rate * population_df$Internet.users
population_df$Birth.rate * population_df$Country.Name

population_df$MyCal <- population_df$Birth.rate * population_df$Internet.users
population_df$MyCal

head(population_df)


population_df$xyz <- 1:5
head(population_df, n = 10)


# 过滤数据 filtering
population_df$Birth.rate < 20
population_df[population_df$Birth.rate > 40, ]
population_df[population_df$Birth.rate > 40 & population_df$Internet.users < 2, ]
population_df[population_df$Income.Group == "High income", ]
levels(population_df$Income.Group)


# qplot函数
install.packages("ggplot2")

library(ggplot2)

?ggplot2
?qplot

qplot(data = population_df, x = Internet.users, )
qplot(data = population_df, x = Income.Group, y = Birth.rate)
qplot(data = population_df, x = Income.Group, y = Birth.rate, size = I(5))
qplot(data = population_df, x = Income.Group, y = Birth.rate, size = I(3), color = I("Blue"))
qplot(data = population_df, x = Income.Group, y = Birth.rate, size = I(0.5), color = I("Red"), geom = "boxplot")


# 使用qplot来进行数据可视化
qplot(data = population_df, x = Internet.users, y = Birth.rate)
qplot(data = population_df, x = Internet.users, y = Birth.rate, size = I(3))
qplot(data = population_df, x = Internet.users, y = Birth.rate, colour = Income.Group, size = I(3))


# 构建 data frame
build_df <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, Regions_2012_Dataset)
is.data.frame(build_df)
head(build_df)
colnames(build_df) <- c("Countries", "Codes", "Regions")
head(build_df)

# 首先移除build_df
rm(build_df)

build_df_colnames <- data.frame(Country = Countries_2012_Dataset, Codes = Codes_2012_Dataset, Regions = Regions_2012_Dataset)
head(build_df_colnames)


# merge 数据集
head(population_df)
head(build_df_colnames)

# 开始进行合并
merge_df <- merge(population_df, build_df_colnames, by.x = "Country.Code", by.y = "Codes")
head(merge_df)

merge_df$Country <- NULL  # 删除重复列
merge_df$xyz <- NULL  # 将原先测试用的列也删除了
head(merge_df)



# 绘图 - 续
qplot(data = merge_df, x = Internet.users, y = Birth.rate, colour = Regions, size = I(5), shape = I(17))
qplot(data = merge_df, x = Internet.users, y = Birth.rate, colour = Regions, size = I(5), shape = I(17), alpha = I(0.7))
qplot(data = merge_df, x = Internet.users, y = Birth.rate, colour = Regions, size = I(5), shape = I(17), alpha = I(0.7), main = "Birth Rate v.s. Internet Users")
# 导入需要的packages
library(ggplot2)

# 导入数据集
movie_df <- read.csv("P2-Movie-Ratings.csv")

# 查看一下数据
head(movie_df)
tail(movie_df)

# 查看数据集的结构
str(movie_df)

# 修改数据集的列名
colnames(movie_df)  # 查看现有的名称
colnames(movie_df) <- c("File", "Genere", "CriticRating", "AudienceRating", "BudgetMillions", "Year")  # 修改列名
colnames(movie_df)  # 再次查看

# 简单的总结总计
summary(movie_df)

# 将年份转换为factor
movie_df$Year <- factor(movie_df$Year)  # 使用factor()函数
str(movie_df$Year)  # 查看这一列的数据类型
summary(movie_df)


# aes层
ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating))
ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating)) + geom_point()
ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating, colour = Genere)) + geom_point()
ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating, colour = Genere, size = Genere)) + geom_point()

ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating, colour = Genere, size = BudgetMillions)) + geom_point()

# 方便
q
p + geom_point()
p + geom_line()
p + geom_line() + geom_point()
p  + geom_point() + geom_line()


# ------------ overriding -----------

q <- ggplot(data=movie_df, aes(x = CriticRating, y = AudienceRating, colour = Genere, size = BudgetMillions))
q + geom_point()

# overriding example 01
q + geom_point(aes(size = CriticRating))

# overriding example 02
q + geom_point(aes(colour = BudgetMillions))

# overriding example 03
q + geom_point(aes(x = BudgetMillions)) + xlab("Budget Millions $$$")


# ------------ mapping vs setting -----
r <- ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating))
r + geom_point()

# add colour
# 1. mapping (what we have done so far):
r + geom_point(aes(colour = Genere))
# 2. setting:
r + geom_point(colour = "DarkGreen")
# Error
r + geom_point(aes(colour = "DarkGreen"))


# ------------ hist and density -------
s <- ggplot(data = movie_df, aes(x = BudgetMillions))
s + geom_histogram(binwidth = 10)

# 添加颜色
s + geom_histogram(binwidth = 10, aes(fill = Genere))

# density charts
s + geom_density()

# 使用genere
s + geom_density(aes(fill = Genere))

s + geom_density(aes(fill = Genere), position = "stack")


# ------------ layer tips ---------------
t <- ggplot(data = movie_df, aes(x = AudienceRating))
t + geom_histogram(binwidth = 10, fill = "White", colour = "Blue")

# another way
t <- ggplot(data = movie_df)
t + geom_histogram(binwidth = 10, aes(x = AudienceRating), fill = "White", colour = "Blue")

# CriticRating
t + geom_histogram(binwidth = 10, aes(x = CriticRating), fill = "White", colour = "Blue")


# ------------ Statistical Transformations --------
?geom_smooth

u <- ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating, colour = Genere))
u + geom_point() + geom_smooth(fill = NA)


# boxplots
u <- ggplot(data = movie_df, aes(x = Genere, y = AudienceRating, colour = Genere))
u + geom_boxplot(size = 1.2)
u + geom_boxplot(size = 1.2) + geom_point()

u + geom_boxplot(size = 1.1) + geom_jitter()

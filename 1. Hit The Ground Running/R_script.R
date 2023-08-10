getwd()  # 显示当前的路径

mydata <- read.csv(file.choose())

installed.packages("ggplot2")  # 安装包
library(ggplot2)  # 导入包

# 开始处理数据
ggplot(data= mydata[mydata$carat < 2.5,], aes(x = carat, y = price, colour = clarity)) + 
  geom_point(alpha = 0.1) + geom_smooth()

       
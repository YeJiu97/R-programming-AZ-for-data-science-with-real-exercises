# 1. Hit The Ground Running

R语言的下载地址为：

[The R Project for Statistical Computing](https://www.r-project.org/)

如图：

![Untitled](1%20Hit%20The%20Ground%20Running%20b140198b1c92480b8323ad0548acace0/Untitled.png)

需要使用的编译器是R-Studio：

[Posit | The Open-Source Data Science Company](https://posit.co/)

我们打开Rstudio之后可以看到这样的一个界面：

![Untitled](1%20Hit%20The%20Ground%20Running%20b140198b1c92480b8323ad0548acace0/Untitled%201.png)

这个界面实际上有四个部分：

1. 左上角的是编程部分
2. 左下角的是运行结果部分，也可以在这个部分进行编写
3. 右上角的是变量部分，会显示生成的变量和变量的内容
4. 右下角的是图片部分，如果有显示图片的话，会在这个部分显示

我们输入第一段指令：

```r
getwd()  # 显示当前的路径
```

运行的结果如下所示：

```r
> getwd()  # 显示当前的路径
[1] "C:/Users/yinia/Desktop/Github/RProgrammingNotes/01 - R Programming A-Z R For Data Science With Real Exercises!/1. Hit The Ground Running"
```

使用的数据集：

[R Programming A-Z: Download Practice Datasets - Page - SuperDataScience | Machine Learning | AI | Data Science Career | Analytics | Success](https://www.superdatascience.com/pages/rcourse)

![Untitled](1%20Hit%20The%20Ground%20Running%20b140198b1c92480b8323ad0548acace0/Untitled%202.png)

数据集为：P2-Mispriced-Diamonds.csv

数据结构如下所示：

![Untitled](1%20Hit%20The%20Ground%20Running%20b140198b1c92480b8323ad0548acace0/Untitled%203.png)

我们可以使用：

```r
read.csv(file.choose())
```

可以得到这样的结果：

![Untitled](1%20Hit%20The%20Ground%20Running%20b140198b1c92480b8323ad0548acace0/Untitled%204.png)

选择之后可以看到右上方出现这样的内容：

![Untitled](1%20Hit%20The%20Ground%20Running%20b140198b1c92480b8323ad0548acace0/Untitled%205.png)

接着需要导入一个包，这里展示了安装和导入两个步骤：

```r
installed.packages("ggplot2")  # 安装包
library(ggplot2)  # 导入包
```

接着开始处理数据：

```r
# 开始处理数据
ggplot(data= mydata, aes(x = carat, y = price)) + geom_point()
```

得到的结果为：

![Untitled](1%20Hit%20The%20Ground%20Running%20b140198b1c92480b8323ad0548acace0/Untitled%206.png)

我们可以进行稍微的修改：

```r
ggplot(data= mydata, aes(x = carat, y = price, colour = clarity)) + geom_point()
```

得到的结果为：

![Untitled](1%20Hit%20The%20Ground%20Running%20b140198b1c92480b8323ad0548acace0/Untitled%207.png)

我们可以添加选择条件，只保留2.5克拉以下的宝石的数据：

```r
ggplot(data= mydata[mydata$carat < 2.5,], aes(x = carat, y = price, colour = clarity)) + geom_point(alpha = 0.1)
```

选择的重点在于：

```r
mydata[mydata$carat < 2.5, ]
```

我们还可以添加smooth函数上去：

```r
# 开始处理数据
ggplot(data= mydata[mydata$carat < 2.5,], aes(x = carat, y = price, colour = clarity)) + 
  geom_point(alpha = 0.1) + geom_smooth()
```

得到的结果为：

![Untitled](1%20Hit%20The%20Ground%20Running%20b140198b1c92480b8323ad0548acace0/Untitled%208.png)

一些额外的资源：

[SDS 041: An inspiring journey from a totally different background to Data Science - Podcasts - SuperDataScience | Machine Learning | AI | Data Science Career | Analytics | Success](https://www.superdatascience.com/podcast/sds-041-inspiring-journey-totally-different-background-data-science)
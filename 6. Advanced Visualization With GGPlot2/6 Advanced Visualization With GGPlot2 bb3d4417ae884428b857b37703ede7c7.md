# 6. Advanced Visualization With GGPlot2

## 相关的项目

这次的项目的名称：电影收视率数据集。

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled.png)

这是数据集打开之后的结果：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%201.png)

## 导入数据集

首先需要导入包和数据：

```r
# 导入需要的packages
library(ggplot2)

# 导入数据集
movie_df <- read.csv("P2-Movie-Ratings.csv")
```

接着是查看一下数据的内容：

```r
> # 查看一下数据
> head(movie_df)
                   Film     Genre Rotten.Tomatoes.Ratings.. Audience.Ratings.. Budget..million... Year.of.release
1 (500) Days of Summer     Comedy                        87                 81                  8            2009
2           10,000 B.C. Adventure                         9                 44                105            2008
3            12 Rounds     Action                        30                 52                 20            2009
4             127 Hours Adventure                        93                 84                 18            2010
5             17 Again     Comedy                        55                 70                 20            2009
6                  2012    Action                        39                 63                200            2009
> tail(movie_df)
                          Film    Genre Rotten.Tomatoes.Ratings.. Audience.Ratings.. Budget..million... Year.of.release
557              Your Highness   Comedy                        26                 36                 50            2011
558            Youth in Revolt   Comedy                        68                 52                 18            2009
559 Zack and Miri Make a Porno  Romance                        64                 70                 24            2008
560                     Zodiac Thriller                        89                 73                 65            2007
561                Zombieland    Action                        90                 87                 24            2009
562                  Zookeeper   Comedy                        14                 42                 80            2011
```

还有就是查看一下数据集的结构：

```r
> str(movie_df)
'data.frame':	562 obs. of  6 variables:
 $ Film                     : chr  "(500) Days of Summer " "10,000 B.C." "12 Rounds " "127 Hours" ...
 $ Genre                    : chr  "Comedy" "Adventure" "Action" "Adventure" ...
 $ Rotten.Tomatoes.Ratings..: int  87 9 30 93 55 39 40 50 43 93 ...
 $ Audience.Ratings..       : int  81 44 52 84 70 63 71 57 48 93 ...
 $ Budget..million...       : int  8 105 20 18 20 200 30 32 28 8 ...
 $ Year.of.release          : int  2009 2008 2009 2010 2009 2009 2008 2007 2011 2011 ...
```

## Data层与Factor函数

ggplot2的逻辑如下图所示：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%202.png)

我们首先需要修改一下数据集的列的名称：

```r
> # 修改数据集的列名
> colnames(movide_df)
Error in is.data.frame(x) : object 'movide_df' not found
> # 修改数据集的列名
> colnames(movie_df)
[1] "Film"                      "Genre"                     "Rotten.Tomatoes.Ratings.." "Audience.Ratings.."       
[5] "Budget..million..."        "Year.of.release"          
> colnames(movie_df) <- c("File", "Genere", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
> colnames(movie_df)
[1] "File"           "Genere"         "CriticRating"   "AudienceRating" "BudgetMillions" "Year"
```

我们可以进行一个简单的统计：

```r
> # 简单的总结总计
> summary(movie_df)
     File              Genere           CriticRating  AudienceRating  BudgetMillions       Year     
 Length:562         Length:562         Min.   : 0.0   Min.   : 0.00   Min.   :  0.0   Min.   :2007  
 Class :character   Class :character   1st Qu.:25.0   1st Qu.:47.00   1st Qu.: 20.0   1st Qu.:2008  
 Mode  :character   Mode  :character   Median :46.0   Median :58.00   Median : 35.0   Median :2009  
                                       Mean   :47.4   Mean   :58.83   Mean   : 50.1   Mean   :2009  
                                       3rd Qu.:70.0   3rd Qu.:72.00   3rd Qu.: 65.0   3rd Qu.:2010  
                                       Max.   :97.0   Max.   :96.00   Max.   :300.0   Max.   :2011
```

summary()函数给出了一些常用的统计所需的结果，当然这是对于int或则num类型的数据而言的。

但是在上述的结果中，我们需要注意一下Year这一列的统计结果，我们应当将年份作为一个分类变量，而不是一个数字。

所以我们可以这么做：

```r
> # 将年份转换为factor
> movie_df$Year <- factor(movie_df$Year)  # 使用factor()函数
> str(movie_df$Year)
 Factor w/ 5 levels "2007","2008",..: 3 2 3 4 3 3 2 1 5 5 ...
> summary(movie_df)
     File              Genere           CriticRating 
 Length:562         Length:562         Min.   : 0.0  
 Class :character   Class :character   1st Qu.:25.0  
 Mode  :character   Mode  :character   Median :46.0  
                                       Mean   :47.4  
                                       3rd Qu.:70.0  
                                       Max.   :97.0  
 AudienceRating  BudgetMillions    Year    
 Min.   : 0.00   Min.   :  0.0   2007: 79  
 1st Qu.:47.00   1st Qu.: 20.0   2008:125  
 Median :58.00   Median : 35.0   2009:116  
 Mean   :58.83   Mean   : 50.1   2010:119  
 3rd Qu.:72.00   3rd Qu.: 65.0   2011:123  
 Max.   :96.00   Max.   :300.0
```

关于factor的更多的信息可以查看：

> 如何理解R中因子(factor)的概念? - 猴子的回答 - 知乎
[https://www.zhihu.com/question/48472404/answer/164790545](https://www.zhihu.com/question/48472404/answer/164790545)
> 

## Aesthetics层

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%203.png)

这里会涉及到ggplot2的内容了：

```r
ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating))
```

首先是data = movie_df让ggplot2知道数据集是什么，接着aes创建了图层，这个图层将CriticRating作为x轴，将AudienceRating作为y轴，绘制的结果如下所示：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%204.png)

我们可以发现一个图层被创建出来了，x轴和y轴也符合了我们的需求，但是我们并没有看到任何的图像，这是因为ggplot2只知道数据集和两个轴是什么，但是并不知道我们需要绘制的图像是怎么的，所以需要添加进一步的信息，也就是geo层的内容了：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%205.png)

假设我们需要的是散点图，那么我们添加的语法就是geom_point()：

```r
ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating)) + geom_point()
```

得到的结果为：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%206.png)

我们可以在这张图上添加更多的信息，我们可以使用不同的颜色来展示不同Genre的情况：

```r
ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating, colour = Genere)) + geom_point()
```

得到的结果为：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%207.png)

我们还可以添加一个size：

```r
ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating, colour = Genere, size = Genere)) + geom_point()
```

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%208.png)

```r
ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating, colour = Genere, size = BudgetMillions)) + geom_point()
```

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%209.png)

为了方便，我们可以这样做：

```r
p <- ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating, colour = Genere, size = BudgetMillions))  # 将这固定的一部分赋值给p
```

```r
p + geom_point()
p + geom_line()
```

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2010.png)

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2011.png)

或者我们可以同时展示两种情况：

```r
p + geom_line() + geom_point()
```

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2012.png)

我们可以对换一下两个图层的位置：

```r
p  + geom_point() + geom_line()
```

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2013.png)

这就是ggplot2的一个工作原理。

## Overriding

这是R语言的可视化的原理：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2014.png)

首先代码如下所示：

```
q <- ggplot(data=movie_df, aes(x = CriticRating, y = AudienceRating, colour = Genere, size = BudgetMillions))

q + geom_point()
```

得到的结果为：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2015.png)

接着代码为：

```
q + geom_point(aes(size = CriticRating))
```

得到的结果为：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2016.png)

这相当于进行了一次overriding。

再次进行overriding：

```
# overriding example 02
q + geom_point(aes(colour = BudgetMillions))
```

得到的结果为：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2017.png)

再再次进行：

```
# overriding example 03
q + geom_point(aes(x = BudgetMillions)) + xlab("Budget Millions $$$")
```

得到的结果为：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2018.png)

## Mapping v.s. Setting

首先我们给出一个底色：

```
r <- ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating))
r + geom_point()
```

得到的结果为：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2019.png)

接着：

```
# add colour
# 1. mapping (what we have done so far):
r + geom_point(aes(colour = Genere))
# 2. setting:
r + geom_point(colour = "DarkGreen")
```

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2020.png)

以及：

```
# Error
r + geom_point(aes(colour = "DarkGreen"))
```

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2021.png)

## Hist和Density图

Histogram图如下所示：

```
s <- ggplot(data = movie_df, aes(x = BudgetMillions))
s + geom_histogram(binwidth = 10)
```

图片为：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2022.png)

添加颜色：

```
# 添加颜色
s + geom_histogram(binwidth = 10, aes(fill = Genere))
```

得到的结果为：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2023.png)

有时候需要使用density charts来创建图片：

```
# density charts
s + geom_density()
```

结果为：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2024.png)

进行提升：

```
# 使用genere
s + geom_density(aes(fill = Genere))
```

得到的结果为：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2025.png)

使用stack：

```
s + geom_density(aes(fill = Genere), position = "stack")
```

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2026.png)

## Layer Tips

```
t <- ggplot(data = movie_df, aes(x = AudienceRating))
t + geom_histogram(binwidth = 10, fill = "White", colour = "Blue")
```

结果为：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2027.png)

另一种方法：

```
t <- ggplot(data = movie_df)
t + geom_histogram(binwidth = 10, aes(x = AudienceRating), fill = "White", colour = "Blue")
```

结果为：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2028.png)

尝试CriticRating：

```
# CriticRating
t + geom_histogram(binwidth = 10, aes(x = CriticRating), fill = "White", colour = "Blue")
```

结果为：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2029.png)

## Statistical Transformations

首先需要查看geom_smooth：

```
?geom_smooth
```

结果为：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2030.png)

代码：

```
u <- ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating, colour = Genere))
u + geom_point() + geom_smooth(fill = NA)
```

结果：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2031.png)

创建boxplot：

```
u <- ggplot(data = movie_df, aes(x = Genere, y = AudienceRating, colour = Genere))
u + geom_boxplot(size = 1.2)
u + geom_boxplot(size = 1.2) + geom_point()
```

得到的结果为：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2032.png)

以及：

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2033.png)

添加jitter()：

```
u + geom_boxplot(size = 1.1) + geom_jitter()
```

![Untitled](6%20Advanced%20Visualization%20With%20GGPlot2%20bb3d4417ae884428b857b37703ede7c7/Untitled%2034.png)
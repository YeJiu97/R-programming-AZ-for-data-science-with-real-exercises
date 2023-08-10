# 5. Data Frames

## 项目

首先查看一下信息：

```r
> # 首先查看一下路径
> getwd()
[1] "C:/Users/yinia/Desktop/Github/RProgrammingNotes/01 - R Programming A-Z R For Data Science With Real Exercises!/5. Data Frames"
> # 查看一下文件
> ls()
character(0)
> # 查看一下文件
> dir()
[1] "P2-Demographic-Data.csv" "Project.R"
```

需要使用到一个csv文件，数据如下所示：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled.png)

## 导入数据

首先需要使用的都是read.csv()函数：

```r
?read.csv
```

结果为：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%201.png)

接着开始导入数据：

```r
# 开始导入数据
population_df <- read.csv(file.choose())
```

可以得到的结果为：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%202.png)

但是这种方法需要手动的导入数据，如果需要指定数据而不是手动导入，则可以直接给文件名：

```r
population_df <- read.csv("P2-Demographic-Data.csv")
```

得到的结果为：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%203.png)

可以打印一下试一下：

```r
population_df
```

得到的结果为：

```r
> population_df
                      Country.Name Country.Code Birth.rate Internet.users        Income.Group
1                            Aruba          ABW     10.244       78.90000         High income
2                      Afghanistan          AFG     35.253        5.90000          Low income
3                           Angola          AGO     45.985       19.10000 Upper middle income
4                          Albania          ALB     12.877       57.20000 Upper middle income
5             United Arab Emirates          ARE     11.044       88.00000         High income
6                        Argentina          ARG     17.716       59.90000         High income
7                          Armenia          ARM     13.308       41.90000 Lower middle income
8              Antigua and Barbuda          ATG     16.447       63.40000         High income
9                        Australia          AUS     13.200       83.00000         High income
10                         Austria          AUT      9.400       80.61880         High income
11                      Azerbaijan          AZE     18.300       58.70000 Upper middle income
12                         Burundi          BDI     44.151        1.30000          Low income
13                         Belgium          BEL     11.200       82.17020         High income
14                           Benin          BEN     36.440        4.90000          Low income
15                    Burkina Faso          BFA     40.551        9.10000          Low income
16                      Bangladesh          BGD     20.142        6.63000 Lower middle income
17                        Bulgaria          BGR      9.200       53.06150 Upper middle income
18                         Bahrain          BHR     15.040       90.00004         High income
19                    Bahamas, The          BHS     15.339       72.00000         High income
20          Bosnia and Herzegovina          BIH      9.062       57.79000 Upper middle income
21                         Belarus          BLR     12.500       54.17000 Upper middle income
22                          Belize          BLZ     23.092       33.60000 Upper middle income
23                         Bermuda          BMU     10.400       95.30000         High income
24                         Bolivia          BOL     24.236       36.94000 Lower middle income
25                          Brazil          BRA     14.931       51.04000 Upper middle income
26                        Barbados          BRB     12.188       73.00000         High income
27               Brunei Darussalam          BRN     16.405       64.50000         High income
28                          Bhutan          BTN     18.134       29.90000 Lower middle income
29                        Botswana          BWA     25.267       15.00000 Upper middle income
30        Central African Republic          CAF     34.076        3.50000          Low income
31                          Canada          CAN     10.900       85.80000         High income
32                     Switzerland          CHE     10.200       86.34000         High income
33                           Chile          CHL     13.385       66.50000         High income
34                           China          CHN     12.100       45.80000 Upper middle income
35                   Cote d'Ivoire          CIV     37.320        8.40000 Lower middle income
36                        Cameroon          CMR     37.236        6.40000 Lower middle income
37                     Congo, Rep.          COG     37.011        6.60000 Lower middle income
38                        Colombia          COL     16.076       51.70000 Upper middle income
39                         Comoros          COM     34.326        6.50000          Low income
40                      Cabo Verde          CPV     21.625       37.50000 Lower middle income
41                      Costa Rica          CRI     15.022       45.96000 Upper middle income
42                            Cuba          CUB     10.400       27.93000 Upper middle income
43                  Cayman Islands          CYM     12.500       74.10000         High income
44                          Cyprus          CYP     11.436       65.45480         High income
45                  Czech Republic          CZE     10.200       74.11040         High income
46                         Germany          DEU      8.500       84.17000         High income
47                        Djibouti          DJI     25.486        9.50000 Lower middle income
48                         Denmark          DNK     10.000       94.62970         High income
49              Dominican Republic          DOM     21.198       45.90000 Upper middle income
50                         Algeria          DZA     24.738       16.50000 Upper middle income
51                         Ecuador          ECU     21.070       40.35368 Upper middle income
52                Egypt, Arab Rep.          EGY     28.032       29.40000 Lower middle income
53                         Eritrea          ERI     34.800        0.90000          Low income
54                           Spain          ESP      9.100       71.63500         High income
55                         Estonia          EST     10.300       79.40000         High income
56                        Ethiopia          ETH     32.925        1.90000          Low income
57                         Finland          FIN     10.700       91.51440         High income
58                            Fiji          FJI     20.463       37.10000 Upper middle income
59                          France          FRA     12.300       81.91980         High income
60           Micronesia, Fed. Sts.          FSM     23.511       27.80000 Lower middle income
61                           Gabon          GAB     30.555        9.20000 Upper middle income
62                  United Kingdom          GBR     12.200       89.84410         High income
63                         Georgia          GEO     13.332       43.30000 Lower middle income
64                           Ghana          GHA     33.131       12.30000 Lower middle income
65                          Guinea          GIN     37.337        1.60000          Low income
66                     Gambia, The          GMB     42.525       14.00000          Low income
67                   Guinea-Bissau          GNB     37.503        3.10000          Low income
68               Equatorial Guinea          GNQ     35.362       16.40000         High income
69                          Greece          GRC      8.500       59.86630         High income
70                         Grenada          GRD     19.334       35.00000 Upper middle income
71                       Greenland          GRL     14.500       65.80000         High income
72                       Guatemala          GTM     27.465       19.70000 Lower middle income
73                            Guam          GUM     17.389       65.40000         High income
74                          Guyana          GUY     18.885       35.00000 Lower middle income
75            Hong Kong SAR, China          HKG      7.900       74.20000         High income
76                        Honduras          HND     21.593       17.80000 Lower middle income
77                         Croatia          HRV      9.400       66.74760         High income
78                           Haiti          HTI     25.345       10.60000          Low income
79                         Hungary          HUN      9.200       72.64390         High income
80                       Indonesia          IDN     20.297       14.94000 Lower middle income
81                           India          IND     20.291       15.10000 Lower middle income
82                         Ireland          IRL     15.000       78.24770         High income
83              Iran, Islamic Rep.          IRN     17.900       29.95000 Upper middle income
84                            Iraq          IRQ     31.093        9.20000 Upper middle income
85                         Iceland          ISL     13.400       96.54680         High income
86                          Israel          ISR     21.300       70.80000         High income
87                           Italy          ITA      8.500       58.45930         High income
88                         Jamaica          JAM     13.540       37.10000 Upper middle income
89                          Jordan          JOR     27.046       41.00000 Upper middle income
90                           Japan          JPN      8.200       89.71000         High income
91                      Kazakhstan          KAZ     22.730       54.00000 Upper middle income
92                           Kenya          KEN     35.194       39.00000 Lower middle income
93                 Kyrgyz Republic          KGZ     27.200       23.00000 Lower middle income
94                        Cambodia          KHM     24.462        6.80000          Low income
95                        Kiribati          KIR     29.044       11.50000 Lower middle income
96                     Korea, Rep.          KOR      8.600       84.77000         High income
97                          Kuwait          KWT     20.575       75.46000         High income
98                         Lao PDR          LAO     27.051       12.50000 Lower middle income
99                         Lebanon          LBN     13.426       70.50000 Upper middle income
100                        Liberia          LBR     35.521        3.20000          Low income
101                          Libya          LBY     21.425       16.50000 Upper middle income
102                      St. Lucia          LCA     15.430       46.20000 Upper middle income
103                  Liechtenstein          LIE      9.200       93.80000         High income
104                      Sri Lanka          LKA     17.863       21.90000 Lower middle income
105                        Lesotho          LSO     28.738        5.00000 Lower middle income
106                      Lithuania          LTU     10.100       68.45290         High income
107                     Luxembourg          LUX     11.300       93.77650         High income
108                         Latvia          LVA     10.200       75.23440         High income
109               Macao SAR, China          MAC     11.256       65.80000         High income
110                        Morocco          MAR     21.023       56.00000 Lower middle income
111                        Moldova          MDA     12.141       45.00000 Lower middle income
112                     Madagascar          MDG     34.686        3.00000          Low income
113                       Maldives          MDV     21.447       44.10000 Upper middle income
114                         Mexico          MEX     19.104       43.46000 Upper middle income
115                 Macedonia, FYR          MKD     11.222       65.24000 Upper middle income
116                           Mali          MLI     44.138        3.50000          Low income
117                          Malta          MLT      9.500       68.91380         High income
118                        Myanmar          MMR     18.119        1.60000 Lower middle income
119                     Montenegro          MNE     11.616       60.31000 Upper middle income
120                       Mongolia          MNG     24.275       20.00000 Upper middle income
121                     Mozambique          MOZ     39.705        5.40000          Low income
122                     Mauritania          MRT     33.801        6.20000 Lower middle income
123                      Mauritius          MUS     10.900       39.00000 Upper middle income
124                         Malawi          MWI     39.459        5.05000          Low income
125                       Malaysia          MYS     16.805       66.97000 Upper middle income
126                        Namibia          NAM     29.937       13.90000 Upper middle income
127                  New Caledonia          NCL     17.000       66.00000         High income
128                          Niger          NER     49.661        1.70000          Low income
129                        Nigeria          NGA     40.045       38.00000 Lower middle income
130                      Nicaragua          NIC     20.788       15.50000 Lower middle income
131                    Netherlands          NLD     10.200       93.95640         High income
132                         Norway          NOR     11.600       95.05340         High income
133                          Nepal          NPL     20.923       13.30000          Low income
134                    New Zealand          NZL     13.120       82.78000         High income
135                           Oman          OMN     20.419       66.45000         High income
136                       Pakistan          PAK     29.582       10.90000 Lower middle income
137                         Panama          PAN     19.680       44.03000 Upper middle income
138                           Peru          PER     20.198       39.20000 Upper middle income
139                    Philippines          PHL     23.790       37.00000 Lower middle income
140               Papua New Guinea          PNG     28.899        6.50000 Lower middle income
141                         Poland          POL      9.600       62.84920         High income
142                    Puerto Rico          PRI     10.800       73.90000         High income
143                       Portugal          PRT      7.900       62.09560         High income
144                       Paraguay          PRY     21.588       36.90000 Upper middle income
145               French Polynesia          PYF     16.393       56.80000         High income
146                          Qatar          QAT     11.940       85.30000         High income
147                        Romania          ROU      8.800       49.76450 Upper middle income
148             Russian Federation          RUS     13.200       67.97000         High income
149                         Rwanda          RWA     32.689        9.00000          Low income
150                   Saudi Arabia          SAU     20.576       60.50000         High income
151                          Sudan          SDN     33.477       22.70000 Lower middle income
152                        Senegal          SEN     38.533       13.10000 Lower middle income
153                      Singapore          SGP      9.300       81.00000         High income
154                Solomon Islands          SLB     30.578        8.00000 Lower middle income
155                   Sierra Leone          SLE     36.729        1.70000          Low income
156                    El Salvador          SLV     17.476       23.10930 Lower middle income
157                        Somalia          SOM     43.891        1.50000          Low income
158                         Serbia          SRB      9.200       51.50000 Upper middle income
159                    South Sudan          SSD     37.126       14.10000          Low income
160          Sao Tome and Principe          STP     34.537       23.00000 Lower middle income
161                       Suriname          SUR     18.455       37.40000 Upper middle income
162                Slovak Republic          SVK     10.100       77.88260         High income
163                       Slovenia          SVN     10.200       72.67560         High income
164                         Sweden          SWE     11.800       94.78360         High income
165                      Swaziland          SWZ     30.093       24.70000 Lower middle income
166                     Seychelles          SYC     18.600       50.40000         High income
167           Syrian Arab Republic          SYR     24.043       26.20000 Lower middle income
168                           Chad          TCD     45.745        2.30000          Low income
169                           Togo          TGO     36.080        4.50000          Low income
170                       Thailand          THA     11.041       28.94000 Upper middle income
171                     Tajikistan          TJK     30.792       16.00000 Lower middle income
172                   Turkmenistan          TKM     21.322        9.60000 Upper middle income
173                    Timor-Leste          TLS     35.755        1.10000 Lower middle income
174                          Tonga          TON     25.409       35.00000 Upper middle income
175            Trinidad and Tobago          TTO     14.590       63.80000         High income
176                        Tunisia          TUN     19.800       43.80000 Upper middle income
177                         Turkey          TUR     16.836       46.25000 Upper middle income
178                       Tanzania          TZA     39.518        4.40000          Low income
179                         Uganda          UGA     43.474       16.20000          Low income
180                        Ukraine          UKR     11.100       41.00000 Lower middle income
181                        Uruguay          URY     14.374       57.69000         High income
182                  United States          USA     12.500       84.20000         High income
183                     Uzbekistan          UZB     22.500       38.20000 Lower middle income
184 St. Vincent and the Grenadines          VCT     16.306       52.00000 Upper middle income
185                  Venezuela, RB          VEN     19.842       54.90000         High income
186          Virgin Islands (U.S.)          VIR     10.700       45.30000         High income
187                        Vietnam          VNM     15.537       43.90000 Lower middle income
188                        Vanuatu          VUT     26.739       11.30000 Lower middle income
189             West Bank and Gaza          PSE     30.394       46.60000 Lower middle income
190                          Samoa          WSM     26.172       15.30000 Lower middle income
191                    Yemen, Rep.          YEM     32.947       20.00000 Lower middle income
192                   South Africa          ZAF     20.850       46.50000 Upper middle income
193               Congo, Dem. Rep.          COD     42.394        2.20000          Low income
194                         Zambia          ZMB     40.471       15.40000 Lower middle income
195                       Zimbabwe          ZWE     35.715       18.50000          Low income
```

## 探索数据

首先需要使用的两个函数是nrow()和ncol()函数：

```r
> nrow(population_df)  # 查看行数
[1] 195
> ncol(population_df)  # 查看列数
[1] 5
```

可以发现数据集的行数为195，列数为5。

如果全部打印出来，数据大多了，可以使用head()来打印开头的几行数据：

```r
> head(population_df)  # head()函数查看开头的几行数据
          Country.Name Country.Code Birth.rate Internet.users        Income.Group
1                Aruba          ABW     10.244           78.9         High income
2          Afghanistan          AFG     35.253            5.9          Low income
3               Angola          AGO     45.985           19.1 Upper middle income
4              Albania          ALB     12.877           57.2 Upper middle income
5 United Arab Emirates          ARE     11.044           88.0         High income
6            Argentina          ARG     17.716           59.9         High income
```

默认的数据为开头的6行。

如果是末尾的几行数据，则是使用tail()函数来查看：

```r
> tail(population_df)  # tail()函数查看末尾的几行数据
        Country.Name Country.Code Birth.rate Internet.users        Income.Group
190            Samoa          WSM     26.172           15.3 Lower middle income
191      Yemen, Rep.          YEM     32.947           20.0 Lower middle income
192     South Africa          ZAF     20.850           46.5 Upper middle income
193 Congo, Dem. Rep.          COD     42.394            2.2          Low income
194           Zambia          ZMB     40.471           15.4 Lower middle income
195         Zimbabwe          ZWE     35.715           18.5          Low income
```

默认的情况之下，也是6行数据。

如果要指定几行数据呢？则可以使用n=来提供参数：

```r
> head(population_df, n = 10)  # n = 10 来指定提供10行数据
           Country.Name Country.Code Birth.rate Internet.users        Income.Group
1                 Aruba          ABW     10.244        78.9000         High income
2           Afghanistan          AFG     35.253         5.9000          Low income
3                Angola          AGO     45.985        19.1000 Upper middle income
4               Albania          ALB     12.877        57.2000 Upper middle income
5  United Arab Emirates          ARE     11.044        88.0000         High income
6             Argentina          ARG     17.716        59.9000         High income
7               Armenia          ARM     13.308        41.9000 Lower middle income
8   Antigua and Barbuda          ATG     16.447        63.4000         High income
9             Australia          AUS     13.200        83.0000         High income
10              Austria          AUT      9.400        80.6188         High income
```

接着可以使用的是str()函数，str不是string的缩写，而是structure的缩写，也就是用来查看数据集的数据结构：

```r
> str(population_df)  # str()函数查看数据结构
'data.frame':	195 obs. of  5 variables:
 $ Country.Name  : chr  "Aruba" "Afghanistan" "Angola" "Albania" ...
 $ Country.Code  : chr  "ABW" "AFG" "AGO" "ALB" ...
 $ Birth.rate    : num  10.2 35.3 46 12.9 11 ...
 $ Internet.users: num  78.9 5.9 19.1 57.2 88 ...
 $ Income.Group  : chr  "High income" "Low income" "Upper middle income" "Upper middle income" ...
```

可以看出对于数据而言：

1. Country.Name 的数据结构为 chr 类型
2. Country.Code 的数据结构为 chr 类型
3. Birth.rate 的数据结构为 num 类型
4. Internet.users 的数据结构为 num 类型
5. Income.Group 的数据结构为 chr 类型

接着可以使用summary()函数来获得简单的统计数据结果：

```r
> summary(population_df)  # summary()函数返回统计结果
 Country.Name       Country.Code         Birth.rate    Internet.users  Income.Group      
 Length:195         Length:195         Min.   : 7.90   Min.   : 0.90   Length:195        
 Class :character   Class :character   1st Qu.:12.12   1st Qu.:14.52   Class :character  
 Mode  :character   Mode  :character   Median :19.68   Median :41.00   Mode  :character  
                                       Mean   :21.47   Mean   :42.08                     
                                       3rd Qu.:29.76   3rd Qu.:66.22                     
                                       Max.   :49.66   Max.   :96.55
```

可以发现数据结构为 num 类型的变量给出了一些基础的统计结果。

## 使用 $ 符号

如果需要获得某一个特定的数据：

```r
> population_df[3, 3]  # 获得第三行，第三列的数据
[1] 45.985
> population_df[3, 4]  # 获得第三行，第四列的数据
[1] 19.1
```

可以使用 [数字, 数字]来获得对应的数据。

获得给参数指定的数据来查询数据：

```r
> population_df[1, "Birth.rate"]
[1] 10.244
```

如果想要获取数据集中的某一个列，则可以使用$来获取：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%204.png)

这是一个例子：

```r
> # 使用 $ 符号
> population_birth <- population_df$Birth.rate
> population_birth
  [1] 10.244 35.253 45.985 12.877 11.044 17.716 13.308 16.447 13.200  9.400 18.300 44.151 11.200 36.440 40.551 20.142  9.200 15.040 15.339
 [20]  9.062 12.500 23.092 10.400 24.236 14.931 12.188 16.405 18.134 25.267 34.076 10.900 10.200 13.385 12.100 37.320 37.236 37.011 16.076
 [39] 34.326 21.625 15.022 10.400 12.500 11.436 10.200  8.500 25.486 10.000 21.198 24.738 21.070 28.032 34.800  9.100 10.300 32.925 10.700
 [58] 20.463 12.300 23.511 30.555 12.200 13.332 33.131 37.337 42.525 37.503 35.362  8.500 19.334 14.500 27.465 17.389 18.885  7.900 21.593
 [77]  9.400 25.345  9.200 20.297 20.291 15.000 17.900 31.093 13.400 21.300  8.500 13.540 27.046  8.200 22.730 35.194 27.200 24.462 29.044
 [96]  8.600 20.575 27.051 13.426 35.521 21.425 15.430  9.200 17.863 28.738 10.100 11.300 10.200 11.256 21.023 12.141 34.686 21.447 19.104
[115] 11.222 44.138  9.500 18.119 11.616 24.275 39.705 33.801 10.900 39.459 16.805 29.937 17.000 49.661 40.045 20.788 10.200 11.600 20.923
[134] 13.120 20.419 29.582 19.680 20.198 23.790 28.899  9.600 10.800  7.900 21.588 16.393 11.940  8.800 13.200 32.689 20.576 33.477 38.533
[153]  9.300 30.578 36.729 17.476 43.891  9.200 37.126 34.537 18.455 10.100 10.200 11.800 30.093 18.600 24.043 45.745 36.080 11.041 30.792
[172] 21.322 35.755 25.409 14.590 19.800 16.836 39.518 43.474 11.100 14.374 12.500 22.500 16.306 19.842 10.700 15.537 26.739 30.394 26.172
[191] 32.947 20.850 42.394 40.471 35.715
> ncol(population_birth)
NULL
```

这里另一个例子：

```r
> population_inter_2 <- population_df$Internet.users[2]
> population_inter_2
[1] 5.9
```

从例子中不难看出，可以在获得列的时候给出一个指定的参数，从而获得对应位置的值。

如果是要获得多个位置的数据，则如下所示：

```r
> population_inter_vec <- population_df$Internet.users[c(1, 2, 3)]
> population_inter_vec
[1] 78.9  5.9 19.1
```

## data frame的基础操作

基础的操作如下所示。

获得以行为依据的子集：

```r
> # 基础的操作
> population_df[1:10, ]  # 获得子集
           Country.Name Country.Code Birth.rate Internet.users        Income.Group
1                 Aruba          ABW     10.244        78.9000         High income
2           Afghanistan          AFG     35.253         5.9000          Low income
3                Angola          AGO     45.985        19.1000 Upper middle income
4               Albania          ALB     12.877        57.2000 Upper middle income
5  United Arab Emirates          ARE     11.044        88.0000         High income
6             Argentina          ARG     17.716        59.9000         High income
7               Armenia          ARM     13.308        41.9000 Lower middle income
8   Antigua and Barbuda          ATG     16.447        63.4000         High income
9             Australia          AUS     13.200        83.0000         High income
10              Austria          AUT      9.400        80.6188         High income
```

获得指定的某几行作为子集：

```r
> population_df[c(1, 5, 10), ]  # 获得1,5,10三行作为子集
           Country.Name Country.Code Birth.rate Internet.users Income.Group
1                 Aruba          ABW     10.244        78.9000  High income
5  United Arab Emirates          ARE     11.044        88.0000  High income
10              Austria          AUT      9.400        80.6188  High income
```

使用is.data.frame()函数能够用来查看是否是data frame：

```r
> is.data.frame(population_df[c(1, 2, 3),])  # 查看是否是data frame
[1] TRUE
```

这里有一个重要的地方需要注意：

```r
> is.data.frame(population_df[1,])  # 是data frame
[1] TRUE
> is.data.frame(population_df[, 1]) # 不是data frame
[1] FALSE
```

我们可以先打印一下population_df[, 1]看一下是怎么回事：

```r
population_df[, 1]
```

得到的结果为：

```r
> population_df[, 1]
  [1] "Aruba"                          "Afghanistan"                    "Angola"                         "Albania"                       
  [5] "United Arab Emirates"           "Argentina"                      "Armenia"                        "Antigua and Barbuda"           
  [9] "Australia"                      "Austria"                        "Azerbaijan"                     "Burundi"                       
 [13] "Belgium"                        "Benin"                          "Burkina Faso"                   "Bangladesh"                    
 [17] "Bulgaria"                       "Bahrain"                        "Bahamas, The"                   "Bosnia and Herzegovina"        
 [21] "Belarus"                        "Belize"                         "Bermuda"                        "Bolivia"                       
 [25] "Brazil"                         "Barbados"                       "Brunei Darussalam"              "Bhutan"                        
 [29] "Botswana"                       "Central African Republic"       "Canada"                         "Switzerland"                   
 [33] "Chile"                          "China"                          "Cote d'Ivoire"                  "Cameroon"                      
 [37] "Congo, Rep."                    "Colombia"                       "Comoros"                        "Cabo Verde"                    
 [41] "Costa Rica"                     "Cuba"                           "Cayman Islands"                 "Cyprus"                        
 [45] "Czech Republic"                 "Germany"                        "Djibouti"                       "Denmark"                       
 [49] "Dominican Republic"             "Algeria"                        "Ecuador"                        "Egypt, Arab Rep."              
 [53] "Eritrea"                        "Spain"                          "Estonia"                        "Ethiopia"                      
 [57] "Finland"                        "Fiji"                           "France"                         "Micronesia, Fed. Sts."         
 [61] "Gabon"                          "United Kingdom"                 "Georgia"                        "Ghana"                         
 [65] "Guinea"                         "Gambia, The"                    "Guinea-Bissau"                  "Equatorial Guinea"             
 [69] "Greece"                         "Grenada"                        "Greenland"                      "Guatemala"                     
 [73] "Guam"                           "Guyana"                         "Hong Kong SAR, China"           "Honduras"                      
 [77] "Croatia"                        "Haiti"                          "Hungary"                        "Indonesia"                     
 [81] "India"                          "Ireland"                        "Iran, Islamic Rep."             "Iraq"                          
 [85] "Iceland"                        "Israel"                         "Italy"                          "Jamaica"                       
 [89] "Jordan"                         "Japan"                          "Kazakhstan"                     "Kenya"                         
 [93] "Kyrgyz Republic"                "Cambodia"                       "Kiribati"                       "Korea, Rep."                   
 [97] "Kuwait"                         "Lao PDR"                        "Lebanon"                        "Liberia"                       
[101] "Libya"                          "St. Lucia"                      "Liechtenstein"                  "Sri Lanka"                     
[105] "Lesotho"                        "Lithuania"                      "Luxembourg"                     "Latvia"                        
[109] "Macao SAR, China"               "Morocco"                        "Moldova"                        "Madagascar"                    
[113] "Maldives"                       "Mexico"                         "Macedonia, FYR"                 "Mali"                          
[117] "Malta"                          "Myanmar"                        "Montenegro"                     "Mongolia"                      
[121] "Mozambique"                     "Mauritania"                     "Mauritius"                      "Malawi"                        
[125] "Malaysia"                       "Namibia"                        "New Caledonia"                  "Niger"                         
[129] "Nigeria"                        "Nicaragua"                      "Netherlands"                    "Norway"                        
[133] "Nepal"                          "New Zealand"                    "Oman"                           "Pakistan"                      
[137] "Panama"                         "Peru"                           "Philippines"                    "Papua New Guinea"              
[141] "Poland"                         "Puerto Rico"                    "Portugal"                       "Paraguay"                      
[145] "French Polynesia"               "Qatar"                          "Romania"                        "Russian Federation"            
[149] "Rwanda"                         "Saudi Arabia"                   "Sudan"                          "Senegal"                       
[153] "Singapore"                      "Solomon Islands"                "Sierra Leone"                   "El Salvador"                   
[157] "Somalia"                        "Serbia"                         "South Sudan"                    "Sao Tome and Principe"         
[161] "Suriname"                       "Slovak Republic"                "Slovenia"                       "Sweden"                        
[165] "Swaziland"                      "Seychelles"                     "Syrian Arab Republic"           "Chad"                          
[169] "Togo"                           "Thailand"                       "Tajikistan"                     "Turkmenistan"                  
[173] "Timor-Leste"                    "Tonga"                          "Trinidad and Tobago"            "Tunisia"                       
[177] "Turkey"                         "Tanzania"                       "Uganda"                         "Ukraine"                       
[181] "Uruguay"                        "United States"                  "Uzbekistan"                     "St. Vincent and the Grenadines"
[185] "Venezuela, RB"                  "Virgin Islands (U.S.)"          "Vietnam"                        "Vanuatu"                       
[189] "West Bank and Gaza"             "Samoa"                          "Yemen, Rep."                    "South Africa"                  
[193] "Congo, Dem. Rep."               "Zambia"                         "Zimbabwe"
```

如果我们希望这是一个data frame，那么我们需要不让维度降下来：

```r
> is.data.frame(population_df[, 1, drop = F])
[1] TRUE
```

我们同样可以打印出来看一下：

```r
> population_df[, 1, drop = F]
                      Country.Name
1                            Aruba
2                      Afghanistan
3                           Angola
4                          Albania
5             United Arab Emirates
6                        Argentina
7                          Armenia
8              Antigua and Barbuda
9                        Australia
10                         Austria
11                      Azerbaijan
12                         Burundi
13                         Belgium
14                           Benin
15                    Burkina Faso
16                      Bangladesh
17                        Bulgaria
18                         Bahrain
19                    Bahamas, The
20          Bosnia and Herzegovina
21                         Belarus
22                          Belize
23                         Bermuda
24                         Bolivia
25                          Brazil
26                        Barbados
27               Brunei Darussalam
28                          Bhutan
29                        Botswana
30        Central African Republic
31                          Canada
32                     Switzerland
33                           Chile
34                           China
35                   Cote d'Ivoire
36                        Cameroon
37                     Congo, Rep.
38                        Colombia
39                         Comoros
40                      Cabo Verde
41                      Costa Rica
42                            Cuba
43                  Cayman Islands
44                          Cyprus
45                  Czech Republic
46                         Germany
47                        Djibouti
48                         Denmark
49              Dominican Republic
50                         Algeria
51                         Ecuador
52                Egypt, Arab Rep.
53                         Eritrea
54                           Spain
55                         Estonia
56                        Ethiopia
57                         Finland
58                            Fiji
59                          France
60           Micronesia, Fed. Sts.
61                           Gabon
62                  United Kingdom
63                         Georgia
64                           Ghana
65                          Guinea
66                     Gambia, The
67                   Guinea-Bissau
68               Equatorial Guinea
69                          Greece
70                         Grenada
71                       Greenland
72                       Guatemala
73                            Guam
74                          Guyana
75            Hong Kong SAR, China
76                        Honduras
77                         Croatia
78                           Haiti
79                         Hungary
80                       Indonesia
81                           India
82                         Ireland
83              Iran, Islamic Rep.
84                            Iraq
85                         Iceland
86                          Israel
87                           Italy
88                         Jamaica
89                          Jordan
90                           Japan
91                      Kazakhstan
92                           Kenya
93                 Kyrgyz Republic
94                        Cambodia
95                        Kiribati
96                     Korea, Rep.
97                          Kuwait
98                         Lao PDR
99                         Lebanon
100                        Liberia
101                          Libya
102                      St. Lucia
103                  Liechtenstein
104                      Sri Lanka
105                        Lesotho
106                      Lithuania
107                     Luxembourg
108                         Latvia
109               Macao SAR, China
110                        Morocco
111                        Moldova
112                     Madagascar
113                       Maldives
114                         Mexico
115                 Macedonia, FYR
116                           Mali
117                          Malta
118                        Myanmar
119                     Montenegro
120                       Mongolia
121                     Mozambique
122                     Mauritania
123                      Mauritius
124                         Malawi
125                       Malaysia
126                        Namibia
127                  New Caledonia
128                          Niger
129                        Nigeria
130                      Nicaragua
131                    Netherlands
132                         Norway
133                          Nepal
134                    New Zealand
135                           Oman
136                       Pakistan
137                         Panama
138                           Peru
139                    Philippines
140               Papua New Guinea
141                         Poland
142                    Puerto Rico
143                       Portugal
144                       Paraguay
145               French Polynesia
146                          Qatar
147                        Romania
148             Russian Federation
149                         Rwanda
150                   Saudi Arabia
151                          Sudan
152                        Senegal
153                      Singapore
154                Solomon Islands
155                   Sierra Leone
156                    El Salvador
157                        Somalia
158                         Serbia
159                    South Sudan
160          Sao Tome and Principe
161                       Suriname
162                Slovak Republic
163                       Slovenia
164                         Sweden
165                      Swaziland
166                     Seychelles
167           Syrian Arab Republic
168                           Chad
169                           Togo
170                       Thailand
171                     Tajikistan
172                   Turkmenistan
173                    Timor-Leste
174                          Tonga
175            Trinidad and Tobago
176                        Tunisia
177                         Turkey
178                       Tanzania
179                         Uganda
180                        Ukraine
181                        Uruguay
182                  United States
183                     Uzbekistan
184 St. Vincent and the Grenadines
185                  Venezuela, RB
186          Virgin Islands (U.S.)
187                        Vietnam
188                        Vanuatu
189             West Bank and Gaza
190                          Samoa
191                    Yemen, Rep.
192                   South Africa
193               Congo, Dem. Rep.
194                         Zambia
195                       Zimbabwe
```

R语言支持对提取出来的列进行四则运算，但是必须是num类型：

```r
> population_df$Birth.rate * population_df$Internet.users
  [1]  808.2516  207.9927  878.3135  736.5644  971.8720 1061.1884  557.6052 1042.7398 1095.6000  757.8167 1074.2100   57.3963  920.3062
 [14]  178.5560  369.0141  133.5415  488.1658 1353.6006 1104.4080  523.6930  677.1250  775.8912  991.1200  895.2778  762.0782  889.7240
 [27] 1058.1225  542.2066  379.0050  119.2660  935.2200  880.6680  890.1025  554.1800  313.4880  238.3104  244.2726  831.1292  223.1190
 [40]  810.9375  690.4111  290.4720  926.2500  748.5411  755.9261  715.4450  242.1170  946.2970  972.9882  408.1770  850.2521  824.1408
 [53]   31.3200  651.8785  817.8200   62.5575  979.2041  759.1773 1007.6135  653.6058  281.1060 1096.0980  577.2756  407.5113   59.7392
 [66]  595.3500  116.2593  579.9368  508.8636  676.6900  954.1000  541.0605 1137.2406  660.9750  586.1800  384.3554  627.4274  268.6570
 [79]  668.3239  303.2372  306.3941 1173.7155  536.1050  286.0556 1293.7271 1508.0400  496.9040  502.3340 1108.8860  735.6220 1227.4200
 [92] 1372.5660  625.6000  166.3416  334.0060  729.0220 1552.5895  338.1375  946.5330  113.6672  353.5125  712.8660  862.9600  391.1997
[105]  143.6900  691.3743 1059.6744  767.3909  740.6448 1177.2880  546.3450  104.0580  945.8127  830.2598  732.1233  154.4830  654.6811
[118]   28.9904  700.5610  485.5000  214.4070  209.5662  425.1000  199.2680 1125.4308  416.1243 1122.0000   84.4237 1521.7100  322.2140
[131]  958.3553 1102.6194  278.2759 1086.0736 1356.8426  322.4438  866.5104  791.7616  880.2300  187.8435  603.3523  798.1200  490.5552
[144]  796.5972  931.1224 1018.4820  437.9276  897.2040  294.2010 1244.8480  759.9279  504.7823  753.3000  244.6240   62.4393  403.8581
[157]   65.8365  473.8000  523.4766  794.3510  690.2170  786.6143  741.2911 1118.4465  743.2971  937.4400  629.9266  105.2135  162.3600
[170]  319.5265  492.6720  204.6912   39.3305  889.3150  930.8420  867.2400  778.6650  173.8792  704.2788  455.1000  829.2361 1052.5000
[183]  859.5000  847.9120 1089.3258  484.7100  682.0743  302.1507 1416.3604  400.4316  658.9400  969.5250   93.2668  623.2534  660.7275
> population_df$Birth.rate * population_df$Country.Name
Error in population_df$Birth.rate * population_df$Country.Name : 
  non-numeric argument to binary operator
```

可以发现当一者不是num类型的时候，会导致运行的错误。

使用$的时候还有一个作用，就是添加一个新的列：

```r
> population_df$MyCal <- population_df$Birth.rate * population_df$Internet.users
> population_df$MyCal
  [1]  808.2516  207.9927  878.3135  736.5644  971.8720 1061.1884  557.6052 1042.7398 1095.6000  757.8167 1074.2100   57.3963  920.3062
 [14]  178.5560  369.0141  133.5415  488.1658 1353.6006 1104.4080  523.6930  677.1250  775.8912  991.1200  895.2778  762.0782  889.7240
 [27] 1058.1225  542.2066  379.0050  119.2660  935.2200  880.6680  890.1025  554.1800  313.4880  238.3104  244.2726  831.1292  223.1190
 [40]  810.9375  690.4111  290.4720  926.2500  748.5411  755.9261  715.4450  242.1170  946.2970  972.9882  408.1770  850.2521  824.1408
 [53]   31.3200  651.8785  817.8200   62.5575  979.2041  759.1773 1007.6135  653.6058  281.1060 1096.0980  577.2756  407.5113   59.7392
 [66]  595.3500  116.2593  579.9368  508.8636  676.6900  954.1000  541.0605 1137.2406  660.9750  586.1800  384.3554  627.4274  268.6570
 [79]  668.3239  303.2372  306.3941 1173.7155  536.1050  286.0556 1293.7271 1508.0400  496.9040  502.3340 1108.8860  735.6220 1227.4200
 [92] 1372.5660  625.6000  166.3416  334.0060  729.0220 1552.5895  338.1375  946.5330  113.6672  353.5125  712.8660  862.9600  391.1997
[105]  143.6900  691.3743 1059.6744  767.3909  740.6448 1177.2880  546.3450  104.0580  945.8127  830.2598  732.1233  154.4830  654.6811
[118]   28.9904  700.5610  485.5000  214.4070  209.5662  425.1000  199.2680 1125.4308  416.1243 1122.0000   84.4237 1521.7100  322.2140
[131]  958.3553 1102.6194  278.2759 1086.0736 1356.8426  322.4438  866.5104  791.7616  880.2300  187.8435  603.3523  798.1200  490.5552
[144]  796.5972  931.1224 1018.4820  437.9276  897.2040  294.2010 1244.8480  759.9279  504.7823  753.3000  244.6240   62.4393  403.8581
[157]   65.8365  473.8000  523.4766  794.3510  690.2170  786.6143  741.2911 1118.4465  743.2971  937.4400  629.9266  105.2135  162.3600
[170]  319.5265  492.6720  204.6912   39.3305  889.3150  930.8420  867.2400  778.6650  173.8792  704.2788  455.1000  829.2361 1052.5000
[183]  859.5000  847.9120 1089.3258  484.7100  682.0743  302.1507 1416.3604  400.4316  658.9400  969.5250   93.2668  623.2534  660.7275
```

可以查看：

```r
> head(population_df)
          Country.Name Country.Code Birth.rate Internet.users        Income.Group     MyCal
1                Aruba          ABW     10.244           78.9         High income  808.2516
2          Afghanistan          AFG     35.253            5.9          Low income  207.9927
3               Angola          AGO     45.985           19.1 Upper middle income  878.3135
4              Albania          ALB     12.877           57.2 Upper middle income  736.5644
5 United Arab Emirates          ARE     11.044           88.0         High income  971.8720
6            Argentina          ARG     17.716           59.9         High income 1061.1884
```

如果添加的数据的数量和行数对不上呢？

```r
> head(population_df, n = 10)
           Country.Name Country.Code Birth.rate Internet.users        Income.Group     MyCal xyz
1                 Aruba          ABW     10.244        78.9000         High income  808.2516   1
2           Afghanistan          AFG     35.253         5.9000          Low income  207.9927   2
3                Angola          AGO     45.985        19.1000 Upper middle income  878.3135   3
4               Albania          ALB     12.877        57.2000 Upper middle income  736.5644   4
5  United Arab Emirates          ARE     11.044        88.0000         High income  971.8720   5
6             Argentina          ARG     17.716        59.9000         High income 1061.1884   1
7               Armenia          ARM     13.308        41.9000 Lower middle income  557.6052   2
8   Antigua and Barbuda          ATG     16.447        63.4000         High income 1042.7398   3
9             Australia          AUS     13.200        83.0000         High income 1095.6000   4
10              Austria          AUT      9.400        80.6188         High income  757.8167   5
```

可以发现，会对给定的数据进行不断的循环。

## 过滤数据

我们可以在选取数据的时候同时进行比较：

```r
> # 过滤数据 filtering
> population_df$Birth.rate < 20
  [1]  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE
 [23]  TRUE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE
 [45]  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE
 [67] FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE  TRUE
 [89] FALSE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE FALSE
[111]  TRUE FALSE FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE
[133] FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE
[155] FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE
[177]  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
```

或者我们可以将符合某一个条件的数据选取出来：

```r
> population_df[population_df$Birth.rate > 40, ]
        Country.Name Country.Code Birth.rate Internet.users        Income.Group     MyCal xyz
3             Angola          AGO     45.985           19.1 Upper middle income  878.3135   3
12           Burundi          BDI     44.151            1.3          Low income   57.3963   2
15      Burkina Faso          BFA     40.551            9.1          Low income  369.0141   5
66       Gambia, The          GMB     42.525           14.0          Low income  595.3500   1
116             Mali          MLI     44.138            3.5          Low income  154.4830   1
128            Niger          NER     49.661            1.7          Low income   84.4237   3
129          Nigeria          NGA     40.045           38.0 Lower middle income 1521.7100   4
157          Somalia          SOM     43.891            1.5          Low income   65.8365   2
168             Chad          TCD     45.745            2.3          Low income  105.2135   3
179           Uganda          UGA     43.474           16.2          Low income  704.2788   4
193 Congo, Dem. Rep.          COD     42.394            2.2          Low income   93.2668   3
194           Zambia          ZMB     40.471           15.4 Lower middle income  623.2534   4
```

我们也可以同时给定两个数据的选择条件：

```r
> population_df[population_df$Birth.rate > 40 & population_df$Internet.users < 2, ]
    Country.Name Country.Code Birth.rate Internet.users Income.Group   MyCal xyz
12       Burundi          BDI     44.151            1.3   Low income 57.3963   2
128        Niger          NER     49.661            1.7   Low income 84.4237   3
157      Somalia          SOM     43.891            1.5   Low income 65.8365   2
```

也可以在选取数据的时候让符合某一个值的数据被选取：

```r
> population_df[population_df$Income.Group == "High income", ]
             Country.Name Country.Code Birth.rate Internet.users Income.Group     MyCal xyz
1                   Aruba          ABW     10.244       78.90000  High income  808.2516   1
5    United Arab Emirates          ARE     11.044       88.00000  High income  971.8720   5
6               Argentina          ARG     17.716       59.90000  High income 1061.1884   1
8     Antigua and Barbuda          ATG     16.447       63.40000  High income 1042.7398   3
9               Australia          AUS     13.200       83.00000  High income 1095.6000   4
10                Austria          AUT      9.400       80.61880  High income  757.8167   5
13                Belgium          BEL     11.200       82.17020  High income  920.3062   3
18                Bahrain          BHR     15.040       90.00004  High income 1353.6006   3
19           Bahamas, The          BHS     15.339       72.00000  High income 1104.4080   4
23                Bermuda          BMU     10.400       95.30000  High income  991.1200   3
26               Barbados          BRB     12.188       73.00000  High income  889.7240   1
27      Brunei Darussalam          BRN     16.405       64.50000  High income 1058.1225   2
31                 Canada          CAN     10.900       85.80000  High income  935.2200   1
32            Switzerland          CHE     10.200       86.34000  High income  880.6680   2
33                  Chile          CHL     13.385       66.50000  High income  890.1025   3
43         Cayman Islands          CYM     12.500       74.10000  High income  926.2500   3
44                 Cyprus          CYP     11.436       65.45480  High income  748.5411   4
45         Czech Republic          CZE     10.200       74.11040  High income  755.9261   5
46                Germany          DEU      8.500       84.17000  High income  715.4450   1
48                Denmark          DNK     10.000       94.62970  High income  946.2970   3
54                  Spain          ESP      9.100       71.63500  High income  651.8785   4
55                Estonia          EST     10.300       79.40000  High income  817.8200   5
57                Finland          FIN     10.700       91.51440  High income  979.2041   2
59                 France          FRA     12.300       81.91980  High income 1007.6135   4
62         United Kingdom          GBR     12.200       89.84410  High income 1096.0980   2
68      Equatorial Guinea          GNQ     35.362       16.40000  High income  579.9368   3
69                 Greece          GRC      8.500       59.86630  High income  508.8636   4
71              Greenland          GRL     14.500       65.80000  High income  954.1000   1
73                   Guam          GUM     17.389       65.40000  High income 1137.2406   3
75   Hong Kong SAR, China          HKG      7.900       74.20000  High income  586.1800   5
77                Croatia          HRV      9.400       66.74760  High income  627.4274   2
79                Hungary          HUN      9.200       72.64390  High income  668.3239   4
82                Ireland          IRL     15.000       78.24770  High income 1173.7155   2
85                Iceland          ISL     13.400       96.54680  High income 1293.7271   5
86                 Israel          ISR     21.300       70.80000  High income 1508.0400   1
87                  Italy          ITA      8.500       58.45930  High income  496.9040   2
90                  Japan          JPN      8.200       89.71000  High income  735.6220   5
96            Korea, Rep.          KOR      8.600       84.77000  High income  729.0220   1
97                 Kuwait          KWT     20.575       75.46000  High income 1552.5895   2
103         Liechtenstein          LIE      9.200       93.80000  High income  862.9600   3
106             Lithuania          LTU     10.100       68.45290  High income  691.3743   1
107            Luxembourg          LUX     11.300       93.77650  High income 1059.6744   2
108                Latvia          LVA     10.200       75.23440  High income  767.3909   3
109      Macao SAR, China          MAC     11.256       65.80000  High income  740.6448   4
117                 Malta          MLT      9.500       68.91380  High income  654.6811   2
127         New Caledonia          NCL     17.000       66.00000  High income 1122.0000   2
131           Netherlands          NLD     10.200       93.95640  High income  958.3553   1
132                Norway          NOR     11.600       95.05340  High income 1102.6194   2
134           New Zealand          NZL     13.120       82.78000  High income 1086.0736   4
135                  Oman          OMN     20.419       66.45000  High income 1356.8426   5
141                Poland          POL      9.600       62.84920  High income  603.3523   1
142           Puerto Rico          PRI     10.800       73.90000  High income  798.1200   2
143              Portugal          PRT      7.900       62.09560  High income  490.5552   3
145      French Polynesia          PYF     16.393       56.80000  High income  931.1224   5
146                 Qatar          QAT     11.940       85.30000  High income 1018.4820   1
148    Russian Federation          RUS     13.200       67.97000  High income  897.2040   3
150          Saudi Arabia          SAU     20.576       60.50000  High income 1244.8480   5
153             Singapore          SGP      9.300       81.00000  High income  753.3000   3
162       Slovak Republic          SVK     10.100       77.88260  High income  786.6143   2
163              Slovenia          SVN     10.200       72.67560  High income  741.2911   3
164                Sweden          SWE     11.800       94.78360  High income 1118.4465   4
166            Seychelles          SYC     18.600       50.40000  High income  937.4400   1
175   Trinidad and Tobago          TTO     14.590       63.80000  High income  930.8420   5
181               Uruguay          URY     14.374       57.69000  High income  829.2361   1
182         United States          USA     12.500       84.20000  High income 1052.5000   2
185         Venezuela, RB          VEN     19.842       54.90000  High income 1089.3258   5
186 Virgin Islands (U.S.)          VIR     10.700       45.30000  High income  484.7100   1
```

## qplot函数介绍

首先需要做的事情是安装ggplot2这个package：

```r
install.packages("ggplot2")
```

接着导入这个包：

```r
library(ggplot2)
```

接着使用?来查看函数：

```r
?ggplot2
```

得到的结果为：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%205.png)

以及：

```r
?qplot
```

得到的结果为：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%206.png)

接着来尝试使用qplot()函数：

```r
qplot(data = population_df, x = Internet.users, )
```

得到的结果为：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%207.png)

同时还能够给出y的数据：

```r
qplot(data = population_df, x = Income.Group, y = Birth.rate)
```

得到的结果为：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%208.png)

我们还可以修改图片中点的大小：

```r
qplot(data = population_df, x = Income.Group, y = Birth.rate, size = I(5))
```

得到的结果为：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%209.png)

还有就是修改颜色：

```r
qplot(data = population_df, x = Income.Group, y = Birth.rate, size = I(3), color = I("Blue"))
```

得到的结果为：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%2010.png)

我们还可以使用箱型图：

```r
qplot(data = population_df, x = Income.Group, y = Birth.rate, size = I(0.5), color = I("Red"), geom = "boxplot")
```

得到的结果为：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%2011.png)

## 使用qplot()函数来进行可视化

首先我们需要来查看一下Internet.users的数量和Birth.rate之间的关系：

```r
qplot(data = population_df, x = Internet.users, y = Birth.rate)
```

得到的结果为：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%2012.png)

为了让数据能够更好看一点儿，我们可以让点的大小便大一些：

```r
qplot(data = population_df, x = Internet.users, y = Birth.rate, size = I(3))
```

得到的结果为：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%2013.png)

但是这里有一个问题，就是我们没有区分不同income水平的群体，所以我们可以将Income.Group作为参数传递给colors：

```r
qplot(data = population_df, x = Internet.users, y = Birth.rate, colour = Income.Group, size = I(3))
```

得到的结果为：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%2014.png)

## 构建data frames

这里首先需要用到一个新的程序：CountryRegionVectors.R

其中代码为：

```r
#Execute below code to generate three new vectors
Countries_2012_Dataset <- c("Aruba","Afghanistan","Angola","Albania","United Arab Emirates","Argentina","Armenia","Antigua and Barbuda","Australia","Austria","Azerbaijan","Burundi","Belgium","Benin","Burkina Faso","Bangladesh","Bulgaria","Bahrain","Bahamas, The","Bosnia and Herzegovina","Belarus","Belize","Bermuda","Bolivia","Brazil","Barbados","Brunei Darussalam","Bhutan","Botswana","Central African Republic","Canada","Switzerland","Chile","China","Cote d'Ivoire","Cameroon","Congo, Rep.","Colombia","Comoros","Cabo Verde","Costa Rica","Cuba","Cayman Islands","Cyprus","Czech Republic","Germany","Djibouti","Denmark","Dominican Republic","Algeria","Ecuador","Egypt, Arab Rep.","Eritrea","Spain","Estonia","Ethiopia","Finland","Fiji","France","Micronesia, Fed. Sts.","Gabon","United Kingdom","Georgia","Ghana","Guinea","Gambia, The","Guinea-Bissau","Equatorial Guinea","Greece","Grenada","Greenland","Guatemala","Guam","Guyana","Hong Kong SAR, China","Honduras","Croatia","Haiti","Hungary","Indonesia","India","Ireland","Iran, Islamic Rep.","Iraq","Iceland","Israel","Italy","Jamaica","Jordan","Japan","Kazakhstan","Kenya","Kyrgyz Republic","Cambodia","Kiribati","Korea, Rep.","Kuwait","Lao PDR","Lebanon","Liberia","Libya","St. Lucia","Liechtenstein","Sri Lanka","Lesotho","Lithuania","Luxembourg","Latvia","Macao SAR, China","Morocco","Moldova","Madagascar","Maldives","Mexico","Macedonia, FYR","Mali","Malta","Myanmar","Montenegro","Mongolia","Mozambique","Mauritania","Mauritius","Malawi","Malaysia","Namibia","New Caledonia","Niger","Nigeria","Nicaragua","Netherlands","Norway","Nepal","New Zealand","Oman","Pakistan","Panama","Peru","Philippines","Papua New Guinea","Poland","Puerto Rico","Portugal","Paraguay","French Polynesia","Qatar","Romania","Russian Federation","Rwanda","Saudi Arabia","Sudan","Senegal","Singapore","Solomon Islands","Sierra Leone","El Salvador","Somalia","Serbia","South Sudan","Sao Tome and Principe","Suriname","Slovak Republic","Slovenia","Sweden","Swaziland","Seychelles","Syrian Arab Republic","Chad","Togo","Thailand","Tajikistan","Turkmenistan","Timor-Leste","Tonga","Trinidad and Tobago","Tunisia","Turkey","Tanzania","Uganda","Ukraine","Uruguay","United States","Uzbekistan","St. Vincent and the Grenadines","Venezuela, RB","Virgin Islands (U.S.)","Vietnam","Vanuatu","West Bank and Gaza","Samoa","Yemen, Rep.","South Africa","Congo, Dem. Rep.","Zambia","Zimbabwe")
Codes_2012_Dataset <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BMU","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYM","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GRL","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ISR","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LIE","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SRB","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYC","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","PSE","WSM","YEM","ZAF","COD","ZMB","ZWE")
Regions_2012_Dataset <- c("The Americas","Asia","Africa","Europe","Middle East","The Americas","Asia","The Americas","Oceania","Europe","Asia","Africa","Europe","Africa","Africa","Asia","Europe","Middle East","The Americas","Europe","Europe","The Americas","The Americas","The Americas","The Americas","The Americas","Asia","Asia","Africa","Africa","The Americas","Europe","The Americas","Asia","Africa","Africa","Africa","The Americas","Africa","Africa","The Americas","The Americas","The Americas","Europe","Europe","Europe","Africa","Europe","The Americas","Africa","The Americas","Africa","Africa","Europe","Europe","Africa","Europe","Oceania","Europe","Oceania","Africa","Europe","Asia","Africa","Africa","Africa","Africa","Africa","Europe","The Americas","The Americas","The Americas","Oceania","The Americas","Asia","The Americas","Europe","The Americas","Europe","Asia","Asia","Europe","Middle East","Middle East","Europe","Middle East","Europe","The Americas","Middle East","Asia","Asia","Africa","Asia","Asia","Oceania","Asia","Middle East","Asia","Middle East","Africa","Africa","The Americas","Europe","Asia","Africa","Europe","Europe","Europe","Asia","Africa","Europe","Africa","Asia","The Americas","Europe","Africa","Europe","Asia","Europe","Asia","Africa","Africa","Africa","Africa","Asia","Africa","Oceania","Africa","Africa","The Americas","Europe","Europe","Asia","Oceania","Middle East","Asia","The Americas","The Americas","Asia","Oceania","Europe","The Americas","Europe","The Americas","Oceania","Middle East","Europe","Europe","Africa","Middle East","Africa","Africa","Asia","Oceania","Africa","The Americas","Africa","Europe","Africa","Africa","The Americas","Europe","Europe","Europe","Africa","Africa","Middle East","Africa","Africa","Asia","Asia","Asia","Asia","Oceania","The Americas","Africa","Europe","Africa","Africa","Europe","The Americas","The Americas","Asia","The Americas","The Americas","The Americas","Asia","Oceania","Middle East","Oceania","Middle East","Africa","Africa","Africa","Africa")

#(c) Kirill Eremenko, www.superdatascience.com
```

运行之后可以在环境中得到相关的变量：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%2015.png)

如果要使用这些变量来构建data frame，则需要使用data.frame()函数：

```r
# 构建 data frame
build_df <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, Regions_2012_Dataset)
```

测试build_df是否是一个data frame：

```r
> is.data.frame(build_df)
[1] TRUE
```

可以发现这确实是一个data frame。

使用head来查看一下：

```r
> head(build_df)
  Countries_2012_Dataset Codes_2012_Dataset Regions_2012_Dataset
1                  Aruba                ABW         The Americas
2            Afghanistan                AFG                 Asia
3                 Angola                AGO               Africa
4                Albania                ALB               Europe
5   United Arab Emirates                ARE          Middle East
6              Argentina                ARG         The Americas
```

如果想要修改列的名称：

```r
> colnames(build_df) <- c("Countries", "Codes", "Regions")
> head(build_df)
             Countries Codes      Regions
1                Aruba   ABW The Americas
2          Afghanistan   AFG         Asia
3               Angola   AGO       Africa
4              Albania   ALB       Europe
5 United Arab Emirates   ARE  Middle East
6            Argentina   ARG The Americas
```

可以发现列的名称已经被修改了。

或者我们可以在创建的时候就指定列的名称。

首先使用rm()来移除：

```r
# 首先移除build_df
rm(build_df)
```

然后在data.frame的时候直接指定列的名称：

```r
> build_df_colnames <- data.frame(Country = Countries_2012_Dataset, Codes = Codes_2012_Dataset, Regions = Regions_2012_Dataset)
> head(build_df_colnames)
               Country Codes      Regions
1                Aruba   ABW The Americas
2          Afghanistan   AFG         Asia
3               Angola   AGO       Africa
4              Albania   ALB       Europe
5 United Arab Emirates   ARE  Middle East
6            Argentina   ARG The Americas
```

## 合并数据集

首先我们查看一下数据集的信息：

```r
> # merge 数据集
> head(population_df)
          Country.Name Country.Code Birth.rate Internet.users        Income.Group     MyCal xyz
1                Aruba          ABW     10.244           78.9         High income  808.2516   1
2          Afghanistan          AFG     35.253            5.9          Low income  207.9927   2
3               Angola          AGO     45.985           19.1 Upper middle income  878.3135   3
4              Albania          ALB     12.877           57.2 Upper middle income  736.5644   4
5 United Arab Emirates          ARE     11.044           88.0         High income  971.8720   5
6            Argentina          ARG     17.716           59.9         High income 1061.1884   1
> head(build_df_colnames)
               Country Codes      Regions
1                Aruba   ABW The Americas
2          Afghanistan   AFG         Asia
3               Angola   AGO       Africa
4              Albania   ALB       Europe
5 United Arab Emirates   ARE  Middle East
6            Argentina   ARG The Americas
```

可以发现这两个数据集有一个相同的变量，那就是关于Country Code的列。

所以如果要进行合并，则会采用这一列作为基准来进行合并：

```r
> # 开始进行合并
> merge_df <- merge(population_df, build_df_colnames, by.x = "Country.Code", by.y = "Codes")
> head(merge_df)
  Country.Code         Country.Name Birth.rate Internet.users        Income.Group     MyCal xyz              Country      Regions
1          ABW                Aruba     10.244           78.9         High income  808.2516   1                Aruba The Americas
2          AFG          Afghanistan     35.253            5.9          Low income  207.9927   2          Afghanistan         Asia
3          AGO               Angola     45.985           19.1 Upper middle income  878.3135   3               Angola       Africa
4          ALB              Albania     12.877           57.2 Upper middle income  736.5644   4              Albania       Europe
5          ARE United Arab Emirates     11.044           88.0         High income  971.8720   5 United Arab Emirates  Middle East
6          ARG            Argentina     17.716           59.9         High income 1061.1884   1            Argentina The Americas
```

但是我们会发现，对于被合并之后的数据集，存在着Country.Name和Country两个包含相同数据的列表，所以我们可以讲某一列给删除掉，使用NULL来进行赋值就可以实现这一点：

```r
> merge_df$Country <- NULL  # 删除重复列
> merge_df$xyz <- NULL  # 将原先测试用的列也删除了
> head(merge_df)
  Country.Code         Country.Name Birth.rate Internet.users        Income.Group     MyCal      Regions
1          ABW                Aruba     10.244           78.9         High income  808.2516 The Americas
2          AFG          Afghanistan     35.253            5.9          Low income  207.9927         Asia
3          AGO               Angola     45.985           19.1 Upper middle income  878.3135       Africa
4          ALB              Albania     12.877           57.2 Upper middle income  736.5644       Europe
5          ARE United Arab Emirates     11.044           88.0         High income  971.8720  Middle East
6          ARG            Argentina     17.716           59.9         High income 1061.1884 The Americas
```

## 使用qplot()函数来进行绘制 - 续

在进行绘图的时候，是还可以选择图形的形状的：

```r
qplot(data = merge_df, x = Internet.users, y = Birth.rate, colour = Regions, size = I(5), shape = I(17))
```

得到的结果为：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%2016.png)

使用什么形状可以参考这个数据：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%2017.png)

在图片中：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%2018.png)

可以发现存在着一些重叠了的图形，如果要解决这个问题，则可以：

```r
qplot(data = merge_df, x = Internet.users, y = Birth.rate, colour = Regions, size = I(5), shape = I(17), alpha = I(0.7))
```

运行的结果为：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%2019.png)

此外，我们还需要添加一个标题，而不是让读者在看图的时候自己想明白这个图片展示的数据是什么意思。

```r
qplot(data = merge_df, x = Internet.users, y = Birth.rate, colour = Regions, size = I(5), shape = I(17), alpha = I(0.7), main = "Birth Rate v.s. Internet Users")
```

运行的结果为：

![Untitled](5%20Data%20Frames%205ac4cdefb42c465db79d54128eb89a5e/Untitled%2020.png)
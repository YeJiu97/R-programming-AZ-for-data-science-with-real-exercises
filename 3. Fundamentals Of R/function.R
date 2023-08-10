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


# 使用 ? 来进行查看
?rnorm()


# 写一个自己的函数
find.even.number <- function(max_number){
  
  for (i in 1:max_number){
    
    if (i %% 2 == 0){
      
      print(i)
      
    }
    
  }
  
}

find.even.number(20)


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


# 懒惰计算
non.cal <- function(x){
  
  print(10)
  
}
non.cal()

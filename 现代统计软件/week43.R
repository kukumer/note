data<-data.frame(x1=rnorm(10),x2=rnorm(10,2,4),
                 x3=rnorm(10,-1),x4=rnorm(10,5,sqrt(2)))
boxplot(data)
setwd("C:/work")
xx<-read.csv("trt.csv")
attributes(xx)
result<-aov(xx$response~xx$trt)
summary(result)

# 数据来源
# data.frame（每组样本量相等）
# for--计算每组均值
# 输出结果p值
# 注F分布是非对称分布
# pf(lower.tail = FALSE)

data<-data.frame(x1=rnorm(10),x2=rnorm(10,2,4),
                 x3=rnorm(10,-1),x4=rnorm(10,5,sqrt(2)))

anova<-function(x){
  r = dim(x)[2]
  m = dim(x)[1]
  n = length(x) # n = m*r
  mu=mean(as.matrix(x))
  muu = NA; for(i in 1:r) muu[i] = mean(x[,i])
  ssa = sum(m*(muu - mu)^2)
  sse = 0; for(i in 1:r) sse = sse + sum((x[,i] - muu[i])^2)
  msa = ssa/(r - 1)
  mse = sse/(n-r)
}
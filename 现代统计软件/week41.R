# 函数要求
# 分布已知，方差需要外生给定，置信水平默认95%
# 要求输出样本的均值点估计与均值的区间估计
ztest<-function(x,sigma,a=.95){
  n = length(x)
  m = mean(x)
  v = (sigma/sqrt(n))*qnorm(1-(1-.95)/2)
  vv = c(m-v,m+v)
  return(list(mean=m,conf=vv))
}
x<-rnorm(100)
ztest(x,1)

confi<-function(x,sigma=NA,target="mean",a=.95){
  n = length(x)
  if(target=="mean"){
  m = mean(x)
  if(mode(sigma)=="logical"){
    sigma = sd(x)
    v = (sigma/sqrt(n))*qt(1-(1-.95)/2,n-1)
  }
  if(mode(sigma)=="numeric") v = (sigma/sqrt(n))*qnorm(1-(1-.95)/2)
  vv = c(m-v,m+v)
  return(list(mean=m,conf=vv))
  }
  if(target=="var"){
    s = var(x)
    v = (n-1)*s/qchisq(1-(1-.95)/2,n-1)
    vv = c(s-v,s+v)
    return(list(var = s,conf=vv))
  }
}
confi(x,target="var")

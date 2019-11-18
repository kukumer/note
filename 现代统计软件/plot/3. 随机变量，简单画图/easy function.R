# 简单函数


group<-function(x){
  n=length(x)
  x<-sample(x,n)
  matrix(x,ncol=3,byrow = TRUE)
}

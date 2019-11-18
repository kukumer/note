x<-NA
for(i in 1:100){
  if(i==1) x[i]=3
  if(i>=2) x[i]<-x[i-1]+2
}
y=5
if(y < 5){
  print("hello world")
  y=y+1
  print("happy birthday")
}

if(y < 5){
  print("hello world")
}else{
  print("happy birthday")
}

i=1
while(i<=10){
  print("hello world")
  i=i+1
}

# 一副牌54张，2个大小王
# 多少次能抽到大小王
x<-1:13
x1<-paste("红桃",x,sep = "")
x2<-paste("方块",x,sep = "")
x3<-paste("黑桃",x,sep = "")
x4<-paste("梅花",x,sep = "")
x5<-c("大王","小王")
y<-c(x1,x2,x3,x4,x5)
y
sample(y,1)

j=0
k=0
while(j != "大王" & j!="小王"){
  j<-sample(y,1)
  k<-k+1
}

n=c(10,100,1000,10000)
par(mfrow=c(2,2))
for(i in 1:4){
  x<-rnorm(n[i])
  hist(x)
}
hist(x,probability = T)


abc<-function(x,y=NA,z=TRUE){
  u<-"一个变量"
  if(z == TRUE) w<-sqrt(x);v<-"根号"
  if(z == FALSE) w<-x^2;v<-"平方"
  if(mode(y) =="numeric"){
    u<-"两个变量"
    if(z == TRUE) w<-sqrt(x*y);v<-"根号"
    if(z == FALSE) w<-(x*y)^2;v<-"平方"
  }
  return(list(w,v,u))
}

abc<-function(x,y,z="add"){
  if(z == "add") w<-x+y
  if(z == "minus") w <- x-y
  return(w)
}

# 构造一百次正态随机数，n=1000
# 计算每次结果的均值与标准差
# 根据均值返回最优的结果
abc<-function(n=1000){
  x<-matrix(NA,n,100);m<-mm<-NA
  for(i in 1:100){
    x[,i]=rnorm(n)
    m[i]<-mean(x[,i])
    mm[i]<-sd(x[,i])
  }
  k<-which.min(m)
  x<-x[,k];m<-m[k];mm<-mm[k]
  return(list(data=x,mean=m,sd=mm))
}

abc()

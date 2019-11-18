# 设定X，epsilon，beta
# y
# 求解最小二乘解 hat beta
ols<-function(x,y) solve(t(x)%*%x)%*%t(x)%*%y
# least absolute shrinkage and selection operator

n = 100
p = 500
q = 4
x = matrix(rnorm(n*p),n,p)
epsilon = .4*rnorm(n)
beta = c(rep(10,q),rep(0,p-q))
y = x%*%beta + epsilon

ols(x,y)
install.packages("lars")
library(lars)
# glmnet
result<-lars(x,y,normalize = FALSE)
predict(result,x,type = "coefficients",mode = "lambda",s=0)
# 
# 二分法交叉验证
# lambda = 0.5,....,充分大 100个取值
# 将数据n分成两部分n/2, n/2
# 计算两次建模/预测的均方误差
# 对两次结果分别求均值，选出最优lambda以及对应beta估计
# mse.pred = mean((y.pred - x.pred%*%beta)^2)

lambda <- seq(0.5,10000,length.out = 100)
lambda.max = max(t(x)%*%y)
lambda.min = lambda.max*1e-4
lambda = seq(log(lambda.min),log(lambda.max),length.out = 100)
lambda = exp(lambda)

cv.twofolds<-function(x,y,lambda){
  n<-length(y)
  nn<-sample(n,round(n/2))
  x.test<-x[nn,]
  x.pred<-x[-nn,]
  y.test<-y[nn]
  y.pred<-y[-nn]
  result<-lars(x.test,y.test,normalize = FALSE)
  mse1<-NA
  for(i in 1:length(lambda)){
    coef<-predict(result,x.test,type = "coefficients",
                  mode = "lambda",s=lambda[i])$coefficients
    mse1[i]<-mean((y.pred - x.pred%*%coef)^2)
  }
  x.test<-x[-nn,]
  x.pred<-x[nn,]
  y.test<-y[-nn]
  y.pred<-y[nn]
  result<-lars(x.test,y.test,normalize = FALSE)
  mse2<-NA
  for(i in 1:length(lambda)){
    coef<-predict(result,x.test,type = "coefficients",
                  mode = "lambda",s=lambda[i])$coefficients
    mse2[i]<-mean((y.pred - x.pred%*%coef)^2)
  }
  mse<-(mse1+mse2)/2
  k<-which.min(mse)
  lambda <- lambda[k]
  mse<-mse[k]
  return(list(lambda=lambda,mse=mse))
}



cv.nfolds<-function(x,y,lambda){
  n<-length(y)
  for(j in 1:n){
  x.test<-x[-j,]
  x.pred<-x[j,]
  y.test<-y[-j]
  y.pred<-y[j]
  result<-lars(x.test,y.test,normalize = FALSE)
  mse1<-NA
  for(i in 1:length(lambda)){
    coef<-predict(result,x.test,type = "coefficients",
                  mode = "lambda",s=lambda[i])$coefficients
    mse1[i]<-mean((y.pred - x.pred%*%coef)^2)
  }
  mse<-(mse1+mse2)/2
  k<-which.min(mse)
  lambda <- lambda[k]
  mse<-mse[k]
  return(list(lambda=lambda,mse=mse))
}

cv.twofolds(x,y,lambda)

cv.kfolds<-function(x,y,lambda,k=10){
  n<-length(y)
  nsample<-sample(n,n)
  l<-n%/%k
  ll<-rep(l,k)
  if(n%%k !=0){
    kk<-n%%k
    ll[1:kk]<-l+1
  }
  msek<-matrix(NA,k,length(lambda))
  for(j in 1:k){
    if(j==1) cc<-nsample[1:ll[1]]
    if(j!=1){ 
      a1<-sum(ll[1:(j-1)])+1;a2<-sum(ll[1:j])
      cc<-nsample[a1:a2]
    }
    y.test<-y[-cc]
    y.pred<-y[cc]
    x.test<-x[-cc,]
    x.pred<-x[cc,]
    result<-lars(x.test,y.test,normalize = FALSE)
    for(i in 1:length(lambda)){
      coef<-predict(result,x.test,type = "coefficients",
                    mode = "lambda",s=lambda[i])$coefficients
      msek[j,i]<-mean((y.pred - x.pred%*%coef)^2)
    }
    mse<-apply(msek,2,mean)
    # mse<-NA; for(w in 1:length(lambda)) mse[w]<-mean(msek[,w])
    m<-which.min(mse)
    lambda <- lambda[m]
    mse<-mse[m]
    return(list(lambda=lambda,mse=mse))
  }
  }
}

# e.g.
# msefun<-function(x,y,coef) mean((y - x%*%coef)^2)
# apply(x,1,msefun,y,coef)

# e.g.1
dim(x)
xnew<-apply(x,2,scale)
xnew<-x; for(i in 1:dim(x)[2]) xnew[,i]<-scale(x[,i])
normalized<-function(x) (x - mean(x))/sd(x)
xnew<-apply(x,2,normalized)


# e.g.2
# 请把lambda的循环改成apply
for(i in 1:length(lambda)){
coef<-predict(result,x.test,type = "coefficients",
              mode = "lambda",s=lambda[i])$coefficients
msek[j,i]<-mean((y.pred - x.pred%*%coef)^2)
}

lambda<-matrix(lambda)
msefun<-function(lambda,x.test,result,y.pred,x.pred){
  coef<-predict(result,x.test,type = "coefficients",
                mode = "lambda",s=lambda[i])$coefficients
  mean((y.pred - x.pred%*%coef)^2)
}
apply(lambda,1,msefun,x.test,result,y.pred,x.pred)
for( i in 1:k)
target<-matrix(1:k)
apply(target,1,fun,...)

cv.kfolds(x,y,lambda)

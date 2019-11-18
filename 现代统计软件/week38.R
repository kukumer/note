a1<-1:12
a2<-rep(1,6)
a3<-seq(1,12,length.out = 4)
aa<-c(a1,a2,a3)
length(aa)
aa1<-aa+2
aa1[1:11]*aa
log(aa)
exp(aa)


bb<-matrix(1:9,3,3)
bb1<-matrix(1:9,3,3,byrow = T)
bb%*%bb1
bb[2:3,3]

mean(bb)
sd(bb)
# cor(bb)
median(bb)
fivenum(bb)
quantile(bb)


r;q;p;d

cc<-rnorm(100,3,10)
rt(100,2)

matrix(runif(100,3,4),10)
matrix(cc,10)

# 生成多少随机数
# 使得样本均值与期望之间的误差不超过1e-4
set.seed(20190916)
x<-rnorm(50000000,3,10)
abs(mean(x)-3)<=1e-3

i=1000
x<-rnorm(i,3,10)
while(abs(mean(x)-3)>1e-2){
i=2*i
x<-rnorm(i,3,10)
}

write.table(x,"C:/work/data.txt")
write.csv(x,"C:/work/data11.csv")

read.table("C:/work/data.txt")
read.csv("C:/work/data.csv")

cc<-data.frame(bb)
attributes(cc)
list1<-list(aa=aa,bb=bb,cc=cc,dd=c(T,F),ee=c("abc","bye"))
list1$ee
cc$X1

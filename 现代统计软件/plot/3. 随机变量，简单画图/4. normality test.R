# 正态性检验
# （单组数据）
# 
# Yuehan Yang. 2014/9/27 yyh@cufe.edu.cn

# 1) 使用QQ图
install.packages("DAAG")
library(DAAG)
qqnorm(fpossum$totlngth,
       main="Normality Check via QQ Plot")
# 正态分位数图
qqline(fpossum$totlngth, col='red')
# QQ plots 参数，增加一条理论上的正态曲线
# 由图可见，
# 雌性负鼠总长度的样本数据与正态性略有差异, 特别在图形的中部.



#　2) 与正态密度函数比较
#
attach(fpossum)
dens <- density(totlngth)
# density 计算核密度估计
xlim <- range(dens$x); ylim<-range(dens$y)
# 设定 x, y 轴范围
par(mfrow=c(1,2))
# 分割图形
hist(totlngth,breaks=72.5+(0:5)*5,
       xlim=xlim,ylim=ylim,
       probability=T, xlab="total length",
       main="A:Breaks at 72.5,77.5...")
# 按照 72.5 分割的总长度直方图
lines(dens,col=par('fg'),lty=2)
# 核密度估计曲线
# lty 连线的线型
m <- mean(totlngth)
# 样本均值
s <- sd(totlngth)
# 标准差
curve(dnorm(x, m, s), col='red', add=T)
# 生成同样期望、标准差的正态密度函数曲线
#
#
# 按照 75 分割的总长度直方图
hist(totlngth,breaks=75+(0:5)*5,
       xlim=xlim,ylim=ylim,
       probability=T, xlab="total length",
       main="B:Breaks at 75,80...")
lines(dens,col=par('fg'),lty=2)
m <- mean(totlngth)
s <- sd(totlngth)
curve( dnorm(x, m, s), col='red', add=T)

# 该图表明数据与正态性略有差异. 


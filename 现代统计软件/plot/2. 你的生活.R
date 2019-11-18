# YY作图
#
# Yuehan Yang. 2015/3/16 yyh@cufe.edu.cn

slices <- c(10, 12, 5, 80)
lbls <- c("学习","游戏","发呆","谈恋爱")
pie(slices, labels = lbls, main = "二十岁的时间分布")



pct <- round(slices/sum(slices) * 100)
lbls2 <- paste(lbls, " ", pct, "%", sep = "")
pie(slices, labels = lbls2, col = rainbow(length(lbls)), 
    main = "二十岁的时间分布")

# install.packages("plotrix")
library(plotrix)
pie3D(slices, labels = lbls, explode = 0.1, main = "二十岁的时间分布")


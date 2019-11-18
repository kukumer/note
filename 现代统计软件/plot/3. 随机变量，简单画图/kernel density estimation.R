# 核密度估计
#
# Yuehan Yang. 2014/9/24 yyh@cufe.edu.cn


density(x, bw = "nrd0",
        # bw 指定核密度估计的窗宽
        kernel = c("gaussian", "epanechnikov", "rectangular",
                   "triangular", "biweight", "cosine", "optcosine"),
        # kernel 为核密度估计所使用的光滑化函数
        # 缺省为正态核函数
        n = 512, from, to)
# n 给出间隔的核密度估计点数
# from 与 to 分别给出需要核密度估计的左右端点

# 直方图
# 探索性数据分析的基本工具
# 给出数据的频率分布图形
# 例如（等距频率直方图）：
# 设 X_1,...,X_n 是来自分布密度为 f(x) 的总体 X 的样本
# 把 X 的取值范围等分为 m 个小区间，用 d 表示区间长度，
# 用 \mu_i 表示落入第 i 个小区间的样本个数
#
# 在等距情况下，图形一般用宽度相等的长条矩形来表示，
# 矩形高低表示频率大小
# 横坐标表示所关心变量的取值区间
# 纵坐标表示频率的大小
# 即频率（频数）直方图 hist()
#
# Yuehan Yang. 2014/9/24 yyh@cufe.edu.cn

hist(x, breaks = "Sturges", freq = NULL, probability = !freq,
     # breaks：1. 向量（用于指明直方图区间的分割位置）
     #         2. 正整数（用于指定直方图的小区间数）
     # freq：取 T 表示使用频数画直方图；F 表示使用频率画直方图
     # probability：T/F 选择与freq 恰好相反
     col = NULL,
     # 矩形颜色
     main = paste("Histogram of" , xname),
     xlim = range(breaks), ylim = NULL,
     xlab = xname, ylab,
     axes = TRUE, nclass = NULL)

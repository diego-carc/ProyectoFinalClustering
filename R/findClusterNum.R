# =============================================================
# PACKAGES LOAD

library(factoextra)

# =============================================================
# DATA LOAD

disim.mtrx <- read.table("results/disimMatrix.tsv")

# =============================================================
# CLUSTERS STIMATION

# Gap statistic - k means
fviz_nbclust(disim.mtrx, FUN=kmeans, k.max=10, nstart=20,  method="gap_stat", nboot=50) +
  labs(subtitle="Gap statistic - k means")

# Silhouette - k means
fviz_nbclust(disim.mtrx, FUN=kmeans, k.max=10, nstart=20,  method="silhouette", nboot=50) +
  labs(subtitle="Silhouette - k means")

# WSS - k means
fviz_nbclust(disim.mtrx, FUN=kmeans, k.max=10, nstart=20,  method="wss", nboot=50) +
labs(subtitle="WSS - k means")

# Gap statistic - hclust
fviz_nbclust(disim.mtrx, FUN = hcut, hc_func = "hclust", hc_method = "ward.D2", method = "gap_stat", k.max = 7) +
  labs(subtitle = "GAP statistic method - ward")

# Silhouette - hclust
fviz_nbclust(disim.mtrx, FUN=hcut, hc_func="hclust", hc_method="ward.D2", method="silhouette", k.max=7) +
  labs(subtitle="Silhouette - ward")

# WSS - hclust
fviz_nbclust(disim.mtrx, FUN=hcut, hc_func="hclust", hc_method="ward.D2", method="wss", k.max=7) +
  labs(subtitle="WSS - ward")

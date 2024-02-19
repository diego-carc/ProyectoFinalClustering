# =============================================================
# PACKAGES LOAD

library(cluster)
library(ape)

# =============================================================
# DATA LOAD AND PREPARATION

disim.mtrx <- read.table("results/disimMatrix.tsv")

# complete linkage method
cl <- hclust(dist(disim.mtrx), method="complete")
# single linkage method
sl <- hclust(dist(disim.mtrx), method="single")
# average linkage method
al <- hclust(dist(disim.mtrx), method="average")
# ward method
wd <- hclust(dist(disim.mtrx), method="ward")

# =============================================================
# SAVE DENDOGRAMS AS PHYLOGENY TREE

write.tree(as.phylo(cl),file="results/phyloTree_complete.newick")
write.tree(as.phylo(sl), file="results/phyloTree_single.newick")
write.tree(as.phylo(al), file="results/phyloTree_average.newick")
write.tree(as.phylo(wd), file="results/phyloTree_ward.newick")

# =============================================================
# CLUSTERING COEFFICIENT CALCULATION

coef(cl)
coef(sl)
coef(al)
coef(wd)

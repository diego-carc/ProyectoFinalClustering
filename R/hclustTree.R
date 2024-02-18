library(cluster)
library(ape)

disim.mtrx <- read.table("results/disimMatrix.tsv")

# Save dendograms as phylogeny tree

# complete linkage
cl <- hclust(dist(disim.mtrx), method="complete")
write.tree(as.phylo(cl),file="results/phyloTree_complete.newick")
coef(cl)

# single linkage
sl <- hclust(dist(disim.mtrx), method="single")
write.tree(as.phylo(sl), file="results/phyloTree_single.newick")
coef(sl)

# average linkage
al <- hclust(dist(disim.mtrx), method="average")
write.tree(as.phylo(al), file="results/phyloTree_average.newick")
coef(al)

# ward
wd <- hclust(dist(disim.mtrx), method="ward")
write.tree(as.phylo(wd), file="results/phyloTree_ward.newick")
coef(wd)

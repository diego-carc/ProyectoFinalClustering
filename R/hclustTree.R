library(ape)
disim.mtrx <- read.table("results/disimMatrix.tsv")

# Save dendograms as phylogeny tree

# complete linkage
write.tree(
  as.phylo(hclust(dist(disim.mtrx), method="complete")),
  file = "results/phyloTree_complete.newick"
)

# single linkage
write.tree(
  as.phylo(hclust(dist(disim.mtrx), method="single")),
  file = "results/phyloTree_single.newick"
)

# average linkage
write.tree(
  as.phylo(hclust(dist(disim.mtrx), method="average")),
  file = "results/phyloTree_single.newick"
)

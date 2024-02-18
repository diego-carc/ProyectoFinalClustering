library(tidyr)

# Read table and make data frame "wider"
blastp.results <- as.data.frame(pivot_wider(read.table("results/blastpResults.tsv")[c("V1", "V2", "V12")], names_from = "V1", values_from = "V12"))

# Set Protein ID as row names
rownames(blastp.results) <- blastp.results$V2
blastp.results$V2 <- NULL

# Sort rows and columns
blastp.results <- blastp.results[sort(row.names(blastp.results)), sort(colnames(blastp.results))]

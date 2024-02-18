# ABC family proteins clustering

## Written by [Ethan Galindo Raya](https://ethan-gr.github.io/ethangr.io/) and [Diego Carmona Campos](https://diego-carc.github.io/diego-carc.io/)

### Introduction 
The ATP-binding cassette (ABC) proteins are a family of ATP-dependent transporters in charge of the movement of a wide variety of substances across the plasmatic membrane and several intracellular compartments. Since these proteins are almost ubiquitously found in all kinds of organisms, from prokaryotes to animals, it is speculated that they originated very early in life evolution and have diverged in different subfamilies to span a greater variety of biological functions [1]. 
According to the evolutionary mechanism that gives rise to gene homologs (duplication and divergence by mutation), it is expected that closely related family members share a greater amino acid sequence identity than distantly related ones. Thus it is reasonable that applying a hierarchical clustering algorithm on the sequence similarity data of a set of protein homologs would reflect the phylogenetic relationship of those proteins. In this project, we employ four hierarchical clustering methods to group a set of ABC proteins based on a distance matrix built from the bitscore of pairwise alignments using BLAST. It is important to consider that we do not fully know where the data was taken from, nor the relationship between the sequences analyzed. The only hint available is found in the sequence identifiers in the fasta file. In a real study, we should have a better understanding of the sequences under analysis to properly interpret the results.

### What is the tree with the highest agglomerative coefficient?
We summarize the obtained agglomerative coefficents in the following table:
| Method   | Agglomerative Coefficent |
|----------|--------------------------|
| Single   | 0.61                     |
| Average  | 0.71                     |
| Complete | 0.77                     |
| Ward     | 0.98                     |

The Ward method gave us the highest agglomerative coefficent. However, as we have previously discussed, the results interpretation can´t be agnostic  to the biological context of the data, so the fact that Ward performed the best in terms of aggomerative coefficent doesn´t mean it will generate the best tree. 

### References
1. Vasiliou, V., Vasiliou, K., & Nebert, D. W. (2009). Human ATP-binding cassette (ABC) transporter family. Human genomics, 3(3), 281–290. [https://doi.org/10.1186/1479-7364-3-3-281](https://doi.org/10.1186/1479-7364-3-3-281)

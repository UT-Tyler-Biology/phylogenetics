# http://www.molecularecologist.com/2016/02/quick-and-dirty-tree-building-in-r/

install.packages("ape")
install.packages("phangorn")
install.packages("seqinr")
library(ape)
library(phangorn)
library(seqinr)

ants <- read.dna("COIAlignment.fasta", format="fasta")
ants_phyDat <- phyDat(ants, type = "DNA", levels = NULL)

mt <- modelTest(ants_phyDat)
print(mt)
dna_dist <- dist.ml(ants_phyDat, model="F81")

upgma(dna_dist)
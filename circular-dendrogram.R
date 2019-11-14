library(ape)
library(Biostrings)
library(ggplot2)
library(ggtree)

tree1 <- read.tree("Bsubtilis ATCC6633 guide tree.nwk")
tree2 <- read.tree("Ecoli ATCC25726 guide tree.nwk")
tree3 <- read.tree("Ecoli ATCC25922 guide tree.nwk")
tree4 <- read.tree("Efaecalis ATCC29212 guide tree.nwk")
tree5 <- read.tree("Paeruginosa ATCC27853 guide tree.nwk")
tree6 <- read.tree("Saureus ATCC6538 guide tree.nwk")
tree7 <- read.tree("Saureus ATCC25923 guide tree.nwk")


x <-substr(tree1$tip.label, start = 1, stop = 1)
tree1$category <- x

tree1_save <- ggtree(tree1, layout="circular") + geom_tiplab(hjust = -.1) + xlim(-0.1, NA)

tree2_save <- ggtree(tree2, layout="circular") + geom_tiplab(hjust = -.1) + xlim(-0.1, NA)
tree3_save <- ggtree(tree3, layout="circular") + geom_tiplab(hjust = -.1) + xlim(-0.1, NA)
tree4_save <- ggtree(tree4, layout="circular") + geom_tiplab(hjust = -.1) + xlim(-0.1, NA)
tree5_save <- ggtree(tree5, layout="circular") + geom_tiplab(hjust = -.1) + xlim(-0.1, NA)
tree6_save <- ggtree(tree6, layout="circular") + geom_tiplab(hjust = -.1) + xlim(-0.1, NA)
tree7_save <- ggtree(tree7, layout="circular") + geom_tiplab(hjust = -.1) + xlim(-0.1, NA)


x <- tree1$tip.label

ggsave(tree1_save,file="Bsubtilis ATCC6633 guide tree.pdf", width=10, height=10)
ggsave(tree2_save,file="Ecoli ATCC25726 guide tree.pdf", width=10, height=10)
ggsave(tree3_save,file="Ecoli ATCC25922 guide tree.pdf", width=30, height=30) ##
ggsave(tree4_save,file="Efaecalis ATCC29212 guide tree.pdf", width=10, height=10)
ggsave(tree5_save,file="Paeruginosa ATCC27853 guide tree.pdf", width=20, height=20) #
ggsave(tree6_save,file="Saureus ATCC6538 guide tree.pdf", width=10, height=10)
ggsave(tree7_save,file="Saureus ATCC25923 guide tree.pdf", width=30, height=30) ##

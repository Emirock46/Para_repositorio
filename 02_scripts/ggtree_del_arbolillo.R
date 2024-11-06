#ggtree brrrr
tree<- rtree(10)
tree
plot(tree)

ggtree(tree,branch.length = "none")

ggtree(tree,layout = "circular")
ggtree(tree,layout = "radial")

ggtree(tree,layout = "daylight")


#ggsave para guardar el graffico

ggsave("~/Para_repositorio/primer_arbol.pdf",plot=tree)

class(tree)

matriz_dist <- AAbin(alineamiento_msa2)
matriz_dist <- dist.aa(matriz_dist)
matriz_dist

el_tree = rtree(20)
ggtree(el_tree, layout="radial")+
  
el_tree

arbolillo <- ape::as.phylo(hclust(matriz_dist))

arbolillo_modificado<-ggtree(arbolillo,layout = "circular",branch.length = "none")+
 geom_tiplab(size=3, color = "cyan")

plot(arbolillo) 
plot(arbolillo_modificado) 

ggsave("~/Para_repositorio/2do_arbol.png",plot=arbolillo_modificado)

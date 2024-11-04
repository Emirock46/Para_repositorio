x<-1
suma<- sum(x+1)
suma

secuencias<-readAAStringSet("01_rawdata/DivergentGlobins.fasta")
secuencias
alineamiento_msa<-ggmsa(secuencias)
alineamiento_msa2<-msa(secuencias)
alineamiento_msa2
alineamientoclustal<-msaClustalW(secuencias)
alineamientomuscle<-msaMuscle(secuencias)
alineamientoclustal
alineamientomuscle

##arbol filogenetico con el metodo UPGMA
#calculo de los alineamientos.
matriz_dist <- ape::as.AAbin(alineamiento_msa2)
matriz_dist <- ape::dist.aa(matriz_dist)
matriz_dist

arbol_1 <- phangorn::upgma(matriz_dist)
plot(arbol_1)
dev.off()


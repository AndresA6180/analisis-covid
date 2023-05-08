#Andrés Aguirre Rodríguez
#A01284373

#Link de video: https://youtu.be/9RxvBWnYOfY

# 1 - Calcula la longitud de las secuencias que incluyas.
virus <- c(  "MZ062213", "MW927136", "MW592707", "MW580244", "MZ047312", "MW308549", "MW041156", "MW852494", "MW769706", "MW822592", "MW633892", "MT470219", "MZ047082", "MW737421", "MW595908", "MW938089", "MT534285", "MW981442", "MW577029", "MW309426")
library(Biostrings)
library(seqinr)
library(adegenet)
library(ape)
library(ggtree)
library(DECIPHER)
library(viridis)
library(ggplot2)

virus_sequences <- read.GenBank(virus, ,as.character = TRUE)
str(virus_sequences)

length(virus_sequences[1][[1]])
length(virus_sequences[2][[1]])
length(virus_sequences[3][[1]])
length(virus_sequences[4][[1]])
length(virus_sequences[5][[1]])
length(virus_sequences[6][[1]])
length(virus_sequences[7][[1]])
length(virus_sequences[8][[1]])
length(virus_sequences[9][[1]])
length(virus_sequences[10][[1]])
length(virus_sequences[11][[1]])
length(virus_sequences[12][[1]])
length(virus_sequences[13][[1]])
length(virus_sequences[14][[1]])
length(virus_sequences[15][[1]])
length(virus_sequences[16][[1]])
length(virus_sequences[17][[1]])
length(virus_sequences[18][[1]])
length(virus_sequences[19][[1]])
length(virus_sequences[20][[1]])

count(virus_sequences[[1]], 1)
count(virus_sequences[[2]], 1)
count(virus_sequences[[3]], 1)
count(virus_sequences[[4]], 1)
count(virus_sequences[[5]], 1)
count(virus_sequences[[6]], 1)
count(virus_sequences[[7]], 1)
count(virus_sequences[[8]], 1)
count(virus_sequences[[9]], 1)
count(virus_sequences[[10]], 1)
count(virus_sequences[[11]], 1)
count(virus_sequences[[12]], 1)
count(virus_sequences[[13]], 1)
count(virus_sequences[[14]], 1)
count(virus_sequences[[15]], 1)
count(virus_sequences[[16]], 1)
count(virus_sequences[[17]], 1)
count(virus_sequences[[18]], 1)
count(virus_sequences[[19]], 1)
count(virus_sequences[[20]], 1)

# 2 - Crea una sola gráfica donde se comparen el número de bases de ADN que componen todas las variantes del virus. 
#178129, a
#109512, c
#117000, g
#191653, t

valores.totales <- c(178129, 109512, 117000, 191653)
barplot(valores.totales,
        main = "Numero de Bases",
        xlab= "ADN",
        names.arg = c("a", "c", "g", "t"),
        col = 1:4)


# 3 - Agrega un análisis jerárquico global obtenido de las secuencias que se seleccionaron para estudiar.
write.dna(virus_sequences,  file ="virus_seqs.fasta", format = "fasta", append = FALSE, nbcol = 6, colsep = " ", colw = 10)
text.string<-"((MW927136),(MW592707,MW938089),((((MW633892,MZ047312),MW309426),(MW769706,(MZ062213,MZ047082))),((MW595908),((((MW308549),(((MW577029,MT470219),(((MW822529),(MW580244,MW981442)),(MT534285))))),((MW041156,MW737421),MW852494))))));"
vert.tree<-read.tree(text=text.string)
plot(vert.tree,no.margin=TRUE,edge.width=2)

# 4 - Agrega una interpretación escrita de tus gráficas y tus conclusiones según el caso de estudio que seleccionaste. No olvides sustentar tus argumentos con las lecturas que realizaste.
#En las graficas claramente se puede apreciar como el valor mas alto es el de la T, y en en el analisis se notan muy claramente las subdivisiones de las diferentes variaciones de los viruses encontrados en los 20 paises diferentes.
#En conclusion es muy claro que las variantes tienen muchas similitudes entre si, teniendo valores de A, C, G y T muy similares, y a veces hasta iguales entre ellas mismas. Lo cual tiene sentido considerando que se originan de un mismo lugar y van mutando poco a poco, pero no han llegado al punto de ser extremadamente diferentes en cuanto a su estructura basica.
#En si el SARS-COV 2 si llega a ser muy diferente entre diferentes poblaciones, pero en estos momentos las mutaciones no son extremadamente diferentes, llegan a ser mas diferentes a un nivel mas basico.


#Referencias:
  #https://pubmed.ncbi.nlm.nih.gov/32275259/
  #https://pubmed.ncbi.nlm.nih.gov/32482591/
  #https://pubmed.ncbi.nlm.nih.gov/29429482/
  #https://pubmed.ncbi.nlm.nih.gov/15609507/

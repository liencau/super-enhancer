library("biomaRt")
library("Sushi")
 pdf(file="SE1_binsize_50bp.v1.pdf",width=2,height=3)
par(mar=c(0.5,5,0.5,1))
layout(matrix(c(1,2,3),3, 1, byrow = TRUE))
bb=read.table("SE1_region_modified_v2")
chrom="2"
chromstart=197950045
chromend=197984047

pg=plotGenes(bb,chrom,chromstart,chromend,types=bb$V7,maxrows=50,height=0.4,plotgenetype="box",bb$V7)
 eee=read.table("ear_SE1_H3K27ac_v2.nor")
 see=read.table("seedling_SE1_H3K27ac_v2.nor")
 #ecc$V4=ecc$V4*2106338117/1000000
plot(eee$V2,eee$V4,xaxt="n",type="h",col="blue",xlim=c(chromstart,chromend),ylim=c(0,max(see$V4,eee$V4)*1.1),ylab="H3K27ac")
 #scc$V4=scc$V4*2106338117/1000000
plot(see$V2,see$V4,xaxt="n",type="h",col="blue",xlim=c(chromstart,chromend),ylim=c(0,max(see$V4,eee$V4)*1.1),ylab="H3K27ac")


dev.off()



library("biomaRt")
library("Sushi")
 pdf(file="SE1_binsize_50bp.v3.pdf",width=6,height=3)
par(mar=c(0.5,5,0.5,1))
layout(matrix(c(1,2,2,3),4, 1, byrow = TRUE))
bb=read.table("SE1_region_modified_v2")
chrom="2"
chromstart=197950045
chromend=197984047
pg=plotGenes(bb,chrom,chromstart,chromend,types=bb$V7,maxrows=50,height=0.4,plotgenetype="box",bb$V7)
 eee=read.table("ear_SE1_H3K27ac_v2.nor")
plot(eee$V2,eee$V4,type="h",col="blue",xlim=c(chromstart,chromend),ylim=c(0,max(see$V4,eee$V4)*1.1),ylab="H3K27ac")
dev.off()


library("biomaRt")
library("Sushi")
 pdf(file="TE1_binsize_50bp.v3.pdf",width=6,height=3)
par(mar=c(0.5,5,0.5,1))
layout(matrix(c(1,2,2,3),4, 1, byrow = TRUE))
bb=read.table("TE1_region_modified_v2")
chrom="2"
chromstart=133474536
chromend=133508538
pg=plotGenes(bb,chrom,chromstart,chromend,types=bb$V7,maxrows=50,height=0.4,plotgenetype="box",bb$V7)
 eee=read.table("ear_TE1_H3K27ac_v2.nor")
plot(eee$V2,eee$V4,type="h",col="blue",xlim=c(chromstart,chromend),ylim=c(0,max(see$V4,eee$V4)*1.1),ylab="H3K27ac")
dev.off()

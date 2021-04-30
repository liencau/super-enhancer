library("biomaRt")
library("Sushi")
 pdf(file="SE2_binsize_50bp.v3.pdf",width=6,height=3)
par(mar=c(0.5,5,0.5,1))
layout(matrix(c(1,2,2,3),4, 1, byrow = TRUE))
bb=read.table("SE2_region_modified_v2")
chrom="2"
chromstart=13938109
chromend=13972111
pg=plotGenes(bb,chrom,chromstart,chromend,types=bb$V7,maxrows=50,height=0.4,plotgenetype="box",bb$V7)
 eee=read.table("ear_SE2_H3K27ac_v3.nor")
plot(eee$V2,eee$V4,type="h",col="blue",xlim=c(chromstart,chromend),ylim=c(0,max(eee$V4,eee$V4)*1.1),ylab="H3K27ac")
dev.off()

pdf(file="SE3_binsize_50bp.v3.pdf",width=6,height=3)
par(mar=c(0.5,5,0.5,1))
layout(matrix(c(1,2,2,3),4, 1, byrow = TRUE))
bb=read.table("SE3_region_modified_v2")
chrom="2"
chromstart=201378392
chromend=201412394
pg=plotGenes(bb,chrom,chromstart,chromend,types=bb$V7,maxrows=50,height=0.4,plotgenetype="box",bb$V7)
 eee=read.table("ear_SE3_H3K27ac_v3.nor")
plot(eee$V2,eee$V4,type="h",col="blue",xlim=c(chromstart,chromend),ylim=c(0,max(eee$V4,eee$V4)*1.1),ylab="H3K27ac")
dev.off()

pdf(file="SE4_binsize_50bp.v3.pdf",width=6,height=3)
par(mar=c(0.5,5,0.5,1))
layout(matrix(c(1,2,2,3),4, 1, byrow = TRUE))
bb=read.table("SE4_region_modified_v2")
chrom="5"
chromstart=191130530
chromend=191164532
pg=plotGenes(bb,chrom,chromstart,chromend,types=bb$V7,maxrows=50,height=0.4,plotgenetype="box",bb$V7)
 eee=read.table("ear_SE4_H3K27ac_v3.nor")
plot(eee$V2,eee$V4,type="h",col="blue",xlim=c(chromstart,chromend),ylim=c(0,max(eee$V4,eee$V4)*1.1),ylab="H3K27ac")
dev.off()

pdf(file="SE5_binsize_50bp.v3.pdf",width=6,height=3)
par(mar=c(0.5,5,0.5,1))
layout(matrix(c(1,2,2,3),4, 1, byrow = TRUE))
bb=read.table("SE5_region_modified_v2")
chrom="9"
chromstart=135474488
chromend=135508490
pg=plotGenes(bb,chrom,chromstart,chromend,types=bb$V7,maxrows=50,height=0.4,plotgenetype="box",bb$V7)
 eee=read.table("ear_SE5_H3K27ac_v3.nor")
plot(eee$V2,eee$V4,type="h",col="blue",xlim=c(chromstart,chromend),ylim=c(0,max(eee$V4,eee$V4)*1.1),ylab="H3K27ac")
dev.off()

pdf(file="SE6_binsize_50bp.v3.pdf",width=6,height=3)
par(mar=c(0.5,5,0.5,1))
layout(matrix(c(1,2,2,3),4, 1, byrow = TRUE))
bb=read.table("SE6_region_modified_v2")
chrom="9"
chromstart=149599666
chromend=149633668
pg=plotGenes(bb,chrom,chromstart,chromend,types=bb$V7,maxrows=50,height=0.4,plotgenetype="box",bb$V7)
 eee=read.table("ear_SE6_H3K27ac_v3.nor")
plot(eee$V2,eee$V4,type="h",col="blue",xlim=c(chromstart,chromend),ylim=c(0,max(eee$V4,eee$V4)*1.1),ylab="H3K27ac")
dev.off()

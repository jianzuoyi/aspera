#!/bin/bash
set -ex

ASCP=/its1/GB_BT2/jianzuoyi/pipeline/biosoft/aspera_connect/bin/ascp
KEY=/its1/GB_BT2/jianzuoyi/pipeline/biosoft/aspera_connect/etc/asperaweb_id_dsa.putty
SRA_ACC=anonftp@ftp-private.ncbi.nlm.nih.gov:/sra/sra-instant/reads/ByStudy/sra/SRP/SRP018/SRP018258/
OUTDIR=/its1/GB_BT2/jianzuoyi/projects/pepper/data/00.NGS_SRA

$ASCP -i $KEY -k 2 -QT -l200m $SRA_ACC $OUTDIR

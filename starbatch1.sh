#!/bin/bash

#SBATCH --partition=bgmp        ### Partition (like a queue in PBS)
#SBATCH --job-name=QAA          ### Job Name
#SBATCH --output=result-%j.out  ### File in which to store job output
#SBATCH --error=result-%j.err   ### File in which to store job error messages
#SBATCH --time=0-01:00:00       ### Wall clock time limit in Days-HH:MM:SS
#SBATCH --nodes=1               ### Number of nodes needed for the job
#SBATCH --ntasks-per-node=1     ### Number of tasks to be launched per Node
#SBATCH --cpus-per-task=8       ### CPUs
#SBATCH --account=bgmp          ### Account used for job submission

#setting variables for ease
R1='/projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/28_4D_mbnl_S20_L008_R1_001.trimmed_paired.fastq.gz'
R2='/projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/28_4D_mbnl_S20_L008_R2_001.trimmed_paired.fastq.gz'
dir='/projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/STAR_28_4D_mbnl_S20_L008_Mouse'
fasta='/projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/Mus_musculus.GRCm39.dna.primary_assembly.fa'
gtf='/projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/Mus_musculus.GRCm39.107.gtf'

#building a STAR database
# /usr/bin/time -v \
# /projects/bgmp/jpeplin5/miniconda3/envs/QAA/bin/STAR \
# --runThreadN 8 \
# --runMode genomeGenerate \
# --genomeDir $dir \
# --readFilesCommand zcat \
# --genomeFastaFiles $fasta \
# --sjdbGTFfile $gtf \

# Running STAR alignment(done in ps8script2.sh)
/usr/bin/time -v /projects/bgmp/jpeplin5/miniconda3/envs/QAA/bin/STAR --runThreadN 8 --runMode alignReads \
--outFilterMultimapNmax 3 \
--outSAMunmapped Within KeepPairs \
--alignIntronMax 1000000 --alignMatesGapMax 1000000 \
--readFilesCommand zcat \
--readFilesIn $R1 $R2 \
--genomeDir $dir \
--outFileNamePrefix RNAseqSAM \
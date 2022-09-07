#!/bin/bash

#SBATCH --partition=bgmp        ### Partition (like a queue in PBS)
#SBATCH --job-name=QAA_R2_4D      ### Job Name
#SBATCH --output=result-R2_4D-%j.out  ### File in which to store job output
#SBATCH --error=result-R2_4D-%j.err   ### File in which to store job error messages
#SBATCH --nodes=1               ### Number of nodes needed for the job
#SBATCH --cpus-per-task=1       ### CPUs
#SBATCH --account=bgmp          ### Account used for job submission

conda activate bgmp_py310

cd /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA

/usr/bin/time -v ./bioscript.py \
    -f 27_4C_mbnl_S19_L008_R1_001.trimmed_paired.fastq.gz -f2 27_4C_mbnl_S19_L008_R2_001.trimmed_paired.fastq.gz \
    -l 101 -o 4C_paired_trimmed.png
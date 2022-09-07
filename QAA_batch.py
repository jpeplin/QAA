#!/usr/bin/env python
import numpy as np
import matplotlib.pyplot as plt
import gzip

R1_list = []
R2_list = []

with gzip.open("28_4D_mbnl_S20_L008_R1_001.trimmed_paired.fastq.gz","rt") as fh:
    line_count = 0
    for line in fh:
        line = line.strip()
        line_count += 1
        if line_count % 4 == 2:
            R1_list.append(len(line))

with gzip.open("28_4D_mbnl_S20_L008_R2_001.trimmed_paired.fastq.gz","rt") as fh2:
    line_count = 0
    for line in fh2:
        line = line.strip()
        line_count += 1
        if line_count % 4 == 2:
            R2_list.append(len(line))

fig, ax = plt.subplots(figsize=(10, 6))
plt.hist([R1_list, R2_list], label=['Read 1','Read 2'], color=['#3dadf5','#2e56b3'])
plt.xlabel('Read Length')
ax.legend()
plt.yscale('log')
plt.ylabel('Frequency')
plt.title('Frequency of Read Lengths 28_4D_mbnl_S20_L008')
plt.savefig("4D_PairedReads_Length.png")
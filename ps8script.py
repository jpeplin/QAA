#!/usr/bin/env python

mapped = 0
unmapped = 0
with open('./RNAseqSAMAligned.out.sam') as s:
    for line in s:
        if not line.startswith('@'):
            line = line.split('\t')
            i = 0
            flag = int(line[1])
            if((flag & 4) != 4):
                if((flag & 256) != 256):
                    mapped += 1
            else:
                unmapped +=1
print("The number of mapped reads", mapped)
print("The number of unmapped reads", unmapped)
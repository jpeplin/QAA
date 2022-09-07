Lab Notebook
Jack Peplinski
8/31/22
QAA

## where this is
/projects/bgmp/jpeplin5/bioinfo/Bi623/QAA

## files to be investigated:
cd /projects/bgmp/shared/Bi622
head QAA_data_assignments.txt:

Jack    27_4C_mbnl_S19_L008     28_4D_mbnl_S20_L008

cd /projects/bgmp/shared/2017_sequencing/demultiplexed/

27_4C_mbnl_S19_L008_R1_001.fastq.gz
27_4C_mbnl_S19_L008_R2_001.fastq.gz
28_4D_mbnl_S20_L008_R1_001.fastq.gz
28_4D_mbnl_S20_L008_R2_001.fastq.gz

## unix commands:
module spider fastqc
module load ...
echo $PATH

## Make interactive session
srun --account=bgmp --partition=bgmp --nodes=1 --ntasks-per-node=1 --time=2:00:00 --cpus-per-task=1 --pty bash

## Running FastQC in terminal

/usr/bin/time -v fastqc \
    /projects/bgmp/shared/2017_sequencing/demultiplexed/27_4C_mbnl_S19_L008_R1_001.fastq.gz \
    /projects/bgmp/shared/2017_sequencing/demultiplexed/27_4C_mbnl_S19_L008_R2_001.fastq.gz \
    -o /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA

/usr/bin/time -v fastqc \
    /projects/bgmp/shared/2017_sequencing/demultiplexed/28_4D_mbnl_S20_L008_R1_001.fastq.gz \
    /projects/bgmp/shared/2017_sequencing/demultiplexed/28_4D_mbnl_S20_L008_R2_001.fastq.gz \
    -o /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA

I used unzip 28_4D_mbnl_S20_L008_R1_001_fastqc.zip


## cutadapt
## seq1 and seq2
  cutadapt -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA -A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT -o /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/27_4C_mbnl_S19_L008_R1_001.trimmed.fastq.gz -p /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/27_4C_mbnl_S19_L008_R2_001.trimmed.fastq.gz /projects/bgmp/shared/2017_sequencing/demultiplexed/27_4C_mbnl_S19_L008_R1_001.fastq.gz /projects/bgmp/shared/2017_sequencing/demultiplexed/27_4C_mbnl_S19_L008_R2_001.fastq.gz

=== Summary ===

Total read pairs processed:          7,226,430
  Read 1 with adapter:                 751,117 (10.4%)
  Read 2 with adapter:                 803,568 (11.1%)
Pairs written (passing filters):     7,226,430 (100.0%)

Total basepairs processed: 1,459,738,860 bp
  Read 1:   729,869,430 bp
  Read 2:   729,869,430 bp
Total written (filtered):  1,429,426,877 bp (97.9%)
  Read 1:   714,826,948 bp
  Read 2:   714,599,929 bp

=== First read: Adapter 1 ===

Sequence: AGATCGGAAGAGCACACGTCTGAACTCCAGTCA; Type: regular 3'; Length: 33; Trimmed: 751117 times

Minimum overlap: 3
No. of allowed errors:
1-9 bp: 0; 10-19 bp: 1; 20-29 bp: 2; 30-33 bp: 3

Bases preceding removed adapters:
  A: 14.4%
  C: 28.4%
  G: 41.4%
  T: 14.3%
  none/other: 1.5%

Overview of removed sequences
length  count   expect  max.err error counts
3       139077  112913.0        0       139077
4       41610   28228.2 0       41610
5       23062   7057.1  0       23062
6       17612   1764.3  0       17612
7       16630   441.1   0       16630
8       16318   110.3   0       16318
9       16290   27.6    0       16067 223
10      17031   6.9     1       16356 675
11      16245   1.7     1       15680 565
12      16009   0.4     1       15445 564
13      15877   0.1     1       15289 588
14      15750   0.0     1       15067 683
15      15754   0.0     1       15135 619
16      15534   0.0     1       14818 716
17      15440   0.0     1       14721 719
18      15189   0.0     1       14463 717 9
19      14914   0.0     1       14157 731 26
20      14348   0.0     2       13598 670 80
21      14319   0.0     2       13583 663 73
22      14340   0.0     2       13545 693 102
23      13783   0.0     2       12945 725 113
24      13787   0.0     2       12879 807 101
25      13525   0.0     2       12657 779 89
26      13128   0.0     2       12267 749 112
27      12697   0.0     2       11889 691 110 7
28      12565   0.0     2       11676 762 111 16
29      11924   0.0     2       11033 779 100 12
30      11828   0.0     3       10950 746 96 36
31      11358   0.0     3       10469 732 116 41
32      10890   0.0     3       10052 691 115 32
33      10392   0.0     3       9595 648 114 35
34      10014   0.0     3       9254 625 99 36
35      9464    0.0     3       8763 589 83 29
36      9216    0.0     3       8558 549 70 39
37      8955    0.0     3       8280 589 59 27
38      8572    0.0     3       7942 533 71 26
39      7875    0.0     3       7350 452 51 22
40      7512    0.0     3       6999 440 48 25
41      6960    0.0     3       6439 447 56 18
42      6447    0.0     3       5980 404 46 17
43      5996    0.0     3       5605 341 38 12
44      5335    0.0     3       4989 293 41 12
45      4804    0.0     3       4469 296 33 6
46      4274    0.0     3       3988 243 28 15
47      4028    0.0     3       3743 251 26 8
48      3558    0.0     3       3321 212 19 6
49      3378    0.0     3       3175 178 18 7
50      3035    0.0     3       2847 162 22 4
51      2730    0.0     3       2543 147 38 2
52      2344    0.0     3       2172 153 18 1
53      2072    0.0     3       1926 118 16 12
54      1797    0.0     3       1697 88 9 3
55      1604    0.0     3       1525 68 8 3
56      1392    0.0     3       1292 89 9 2
57      1164    0.0     3       1091 59 12 2
58      1151    0.0     3       1074 68 4 5
59      992     0.0     3       924 56 10 2
60      950     0.0     3       886 58 4 2
61      883     0.0     3       821 47 9 6
62      769     0.0     3       722 41 5 1
63      647     0.0     3       607 32 5 3
64      583     0.0     3       544 32 4 3
65      515     0.0     3       474 36 5
66      472     0.0     3       435 34 3
67      391     0.0     3       370 19 1 1
68      390     0.0     3       369 21
69      361     0.0     3       332 22 3 4
70      328     0.0     3       311 15 1 1
71      305     0.0     3       280 18 6 1
72      258     0.0     3       248 9 1
73      195     0.0     3       176 12 3 4
74      167     0.0     3       158 9
75      122     0.0     3       111 11
76      73      0.0     3       69 3 0 1
77      67      0.0     3       63 4
78      46      0.0     3       43 3
79      42      0.0     3       42
80      26      0.0     3       23 3
81      14      0.0     3       14
82      16      0.0     3       14 2
83      15      0.0     3       13 2
84      10      0.0     3       8 2
85      15      0.0     3       14 1
86      7       0.0     3       5 1 1
87      17      0.0     3       16 1
88      5       0.0     3       4 1
89      15      0.0     3       14 1
90      12      0.0     3       11 1
91      10      0.0     3       9 1
92      6       0.0     3       6
93      4       0.0     3       4
94      2       0.0     3       2
95      3       0.0     3       3
96      4       0.0     3       4
97      1       0.0     3       1
98      7       0.0     3       7
99      5       0.0     3       5
100     2       0.0     3       1 1
101     11462   0.0     3       5 9983 1382 92


=== Second read: Adapter 2 ===

Sequence: AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT; Type: regular 3'; Length: 33; Trimmed: 803568 times

Minimum overlap: 3
No. of allowed errors:
1-9 bp: 0; 10-19 bp: 1; 20-29 bp: 2; 30-33 bp: 3

Bases preceding removed adapters:
  A: 14.7%
  C: 30.0%
  G: 45.1%
  T: 8.7%
  none/other: 1.4%

Overview of removed sequences
length  count   expect  max.err error counts
3       179746  112913.0        0       179746
4       48533   28228.2 0       48533
5       24243   7057.1  0       24243
6       18502   1764.3  0       18502
7       16839   441.1   0       16839
8       16409   110.3   0       16409
9       16509   27.6    0       16247 262
10      17185   6.9     1       16572 613
11      16406   1.7     1       15932 474
12      16131   0.4     1       15744 387
13      15945   0.1     1       15561 384
14      15816   0.0     1       15436 380
15      15824   0.0     1       15348 476
16      15638   0.0     1       15190 448
17      15538   0.0     1       15044 494
18      15282   0.0     1       14674 605 3
19      14967   0.0     1       14442 515 10
20      14401   0.0     2       13781 565 55
21      14356   0.0     2       13734 551 71
22      14385   0.0     2       13772 553 60
23      13841   0.0     2       13280 501 60
24      13826   0.0     2       13119 627 80
25      13568   0.0     2       12914 578 76
26      13171   0.0     2       12504 596 71
27      12735   0.0     2       12127 532 75 1
28      12609   0.0     2       11924 589 96
29      11982   0.0     2       11301 577 96 8
30      11863   0.0     3       11188 542 96 37
31      11395   0.0     3       10737 560 71 27
32      10923   0.0     3       10279 515 106 23
33      10421   0.0     3       9818 508 64 31
34      10060   0.0     3       9454 485 88 33
35      9489    0.0     3       8945 454 65 25
36      9239    0.0     3       8723 422 71 23
37      8968    0.0     3       8464 427 52 25
38      8591    0.0     3       8088 406 62 35
39      7897    0.0     3       7444 367 46 40
40      7549    0.0     3       7132 336 56 25
41      6982    0.0     3       6611 293 54 24
42      6459    0.0     3       6156 243 40 20
43      6011    0.0     3       5679 278 36 18
44      5329    0.0     3       5043 249 24 13
45      4824    0.0     3       4549 228 28 19
46      4287    0.0     3       4051 192 30 14
47      4044    0.0     3       3807 207 17 13
48      3572    0.0     3       3343 192 23 14
49      3395    0.0     3       3182 185 21 7
50      3049    0.0     3       2866 156 18 9
51      2759    0.0     3       2574 155 15 15
52      2361    0.0     3       2225 102 17 17
53      2095    0.0     3       1969 101 9 16
54      1813    0.0     3       1689 96 21 7
55      1617    0.0     3       1521 78 8 10
56      1412    0.0     3       1326 70 10 6
57      1181    0.0     3       1113 50 10 8
58      1169    0.0     3       1095 56 11 7
59      1013    0.0     3       935 69 4 5
60      966     0.0     3       897 57 8 4
61      894     0.0     3       844 40 6 4
62      786     0.0     3       737 40 6 3
63      669     0.0     3       629 31 7 2
64      602     0.0     3       567 23 9 3
65      531     0.0     3       492 29 5 5
66      490     0.0     3       453 30 5 2
67      398     0.0     3       375 19 2 2
68      409     0.0     3       374 28 5 2
69      382     0.0     3       341 28 9 4
70      337     0.0     3       314 15 3 5
71      315     0.0     3       298 15 1 1
72      267     0.0     3       251 12 3 1
73      212     0.0     3       180 27 3 2
74      175     0.0     3       158 13 2 2
75      135     0.0     3       125 8 2
76      80      0.0     3       74 4 0 2
77      81      0.0     3       66 8 6 1
78      49      0.0     3       46 2 1
79      51      0.0     3       43 5 2 1
80      33      0.0     3       28 2 2 1
81      17      0.0     3       15 1 0 1
82      18      0.0     3       16 0 2
83      17      0.0     3       14 1 0 2
84      14      0.0     3       11 1 1 1
85      16      0.0     3       13 2 0 1
86      8       0.0     3       8
87      18      0.0     3       15 2 1
88      7       0.0     3       7
89      18      0.0     3       16 1 0 1
90      12      0.0     3       9 2 1
91      9       0.0     3       8 1
92      6       0.0     3       3 2 1
93      4       0.0     3       3 1
94      2       0.0     3       2
95      4       0.0     3       3 0 0 1
96      4       0.0     3       3 0 1
97      1       0.0     3       1
98      8       0.0     3       4 3 0 1
99      5       0.0     3       2 2 1
100     4       0.0     3       0 1 1 2
101     11360   0.0     3       3 9906 1353 98

## seq3 and seq4
  cutadapt -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA -A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT -o /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/28_4D_mbnl_S20_L008_R1_001.trimmed.fastq.gz -p /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/28_4D_mbnl_S20_L008_R2_001.trimmed.fastq.gz /projects/bgmp/shared/2017_sequencing/demultiplexed/28_4D_mbnl_S20_L008_R1_001.fastq.gz /projects/bgmp/shared/2017_sequencing/demultiplexed/28_4D_mbnl_S20_L008_R2_001.fastq.gz

  === Summary ===

Total read pairs processed:         12,428,766
  Read 1 with adapter:                 743,440 (6.0%)
  Read 2 with adapter:                 841,389 (6.8%)
Pairs written (passing filters):    12,428,766 (100.0%)

Total basepairs processed: 2,510,610,732 bp
  Read 1: 1,255,305,366 bp
  Read 2: 1,255,305,366 bp
Total written (filtered):  2,489,647,234 bp (99.2%)
  Read 1: 1,245,001,943 bp
  Read 2: 1,244,645,291 bp

=== First read: Adapter 1 ===

Sequence: AGATCGGAAGAGCACACGTCTGAACTCCAGTCA; Type: regular 3'; Length: 33; Trimmed: 743440 times

Minimum overlap: 3
No. of allowed errors:
1-9 bp: 0; 10-19 bp: 1; 20-29 bp: 2; 30-33 bp: 3

Bases preceding removed adapters:
  A: 18.6%
  C: 30.3%
  G: 33.8%
  T: 15.9%
  none/other: 1.4%

Overview of removed sequences
length  count   expect  max.err error counts
3       236507  194199.5        0       236507
4       63948   48549.9 0       63948
5       30561   12137.5 0       30561
6       20792   3034.4  0       20792
7       19499   758.6   0       19499
8       18190   189.6   0       18190
9       18117   47.4    0       17775 342
10      17853   11.9    1       17139 714
11      16682   3.0     1       16125 557
12      16276   0.7     1       15819 457
13      15774   0.2     1       15281 493
14      15325   0.0     1       14751 574
15      14578   0.0     1       14074 504
16      14292   0.0     1       13758 534
17      13354   0.0     1       12810 544
18      13014   0.0     1       12422 572 20
19      12645   0.0     1       12044 580 21
20      11920   0.0     2       11290 551 79
21      11492   0.0     2       10926 494 72
22      11149   0.0     2       10520 549 80
23      10390   0.0     2       9816 495 79
24      9831    0.0     2       9292 463 76
25      9429    0.0     2       8936 423 70
26      8724    0.0     2       8164 501 59
27      8354    0.0     2       7891 406 50 7
28      7854    0.0     2       7346 437 61 10
29      7184    0.0     2       6704 413 60 7
30      6718    0.0     3       6220 422 56 20
31      6382    0.0     3       5940 365 54 23
32      5713    0.0     3       5324 300 61 28
33      5420    0.0     3       5053 307 42 18
34      5091    0.0     3       4749 277 46 19
35      4596    0.0     3       4312 234 35 15
36      4494    0.0     3       4194 259 27 14
37      4025    0.0     3       3752 225 30 18
38      3787    0.0     3       3557 192 25 13
39      3466    0.0     3       3205 218 28 15
40      3064    0.0     3       2882 157 15 10
41      2835    0.0     3       2646 151 26 12
42      2469    0.0     3       2308 136 19 6
43      2196    0.0     3       2070 105 12 9
44      1973    0.0     3       1859 93 14 7
45      1839    0.0     3       1715 99 20 5
46      1661    0.0     3       1525 112 18 6
47      1350    0.0     3       1265 78 6 1
48      1290    0.0     3       1197 80 13
49      1222    0.0     3       1157 47 14 4
50      1033    0.0     3       958 60 10 5
51      914     0.0     3       868 36 7 3
52      863     0.0     3       811 46 4 2
53      710     0.0     3       652 54 2 2
54      648     0.0     3       615 25 5 3
55      596     0.0     3       561 26 7 2
56      521     0.0     3       499 19 1 2
57      429     0.0     3       403 22 4
58      418     0.0     3       397 15 5 1
59      382     0.0     3       363 16 1 2
60      347     0.0     3       329 12 6
61      281     0.0     3       268 11 2
62      256     0.0     3       236 14 3 3
63      226     0.0     3       215 9 0 2
64      214     0.0     3       199 10 2 3
65      202     0.0     3       190 11 1
66      188     0.0     3       178 7 3
67      139     0.0     3       133 4 1 1
68      140     0.0     3       133 6 0 1
69      101     0.0     3       95 5 0 1
70      97      0.0     3       93 1 2 1
71      93      0.0     3       89 2 2
72      75      0.0     3       67 6 0 2
73      56      0.0     3       53 2 1
74      49      0.0     3       47 1 0 1
75      47      0.0     3       45 1 0 1
76      47      0.0     3       41 4 1 1
77      41      0.0     3       40 1
78      36      0.0     3       34 2
79      33      0.0     3       31 0 2
80      31      0.0     3       29 2
81      40      0.0     3       37 3
82      30      0.0     3       28 1 1
83      79      0.0     3       73 3 2 1
84      31      0.0     3       31
85      55      0.0     3       50 4 0 1
86      29      0.0     3       27 2
87      38      0.0     3       35 3
88      23      0.0     3       20 1 1 1
89      31      0.0     3       30 1
90      24      0.0     3       24
91      30      0.0     3       29 1
92      15      0.0     3       15
93      28      0.0     3       26 1 0 1
94      13      0.0     3       13
95      25      0.0     3       23 1 1
96      40      0.0     3       38 2
97      20      0.0     3       19 1
98      21      0.0     3       18 0 2 1
99      9       0.0     3       9
100     14      0.0     3       14
101     10307   0.0     3       32 8911 1260 104


=== Second read: Adapter 2 ===

Sequence: AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT; Type: regular 3'; Length: 33; Trimmed: 841389 times

Minimum overlap: 3
No. of allowed errors:
1-9 bp: 0; 10-19 bp: 1; 20-29 bp: 2; 30-33 bp: 3

Bases preceding removed adapters:
  A: 20.2%
  C: 33.2%
  G: 34.1%
  T: 11.4%
  none/other: 1.2%

Overview of removed sequences
length  count   expect  max.err error counts
3       312018  194199.5        0       312018
4       78435   48549.9 0       78435
5       34248   12137.5 0       34248
6       22068   3034.4  0       22068
7       19563   758.6   0       19563
8       18355   189.6   0       18355
9       18416   47.4    0       17969 447
10      18091   11.9    1       17291 800
11      16959   3.0     1       16315 644
12      16429   0.7     1       15949 480
13      15887   0.2     1       15454 433
14      15419   0.0     1       15000 419
15      14672   0.0     1       14166 506
16      14366   0.0     1       13942 424
17      13456   0.0     1       12994 462
18      13062   0.0     1       12563 496 3
19      12710   0.0     1       12257 447 6
20      11974   0.0     2       11465 438 71
21      11555   0.0     2       11063 440 52
22      11174   0.0     2       10660 464 50
23      10452   0.0     2       10027 375 50
24      9880    0.0     2       9378 430 72
25      9472    0.0     2       9003 411 58
26      8755    0.0     2       8312 383 60
27      8394    0.0     2       7972 369 53
28      7899    0.0     2       7493 352 53 1
29      7229    0.0     2       6811 352 60 6
30      6751    0.0     3       6378 300 46 27
31      6415    0.0     3       5997 352 52 14
32      5747    0.0     3       5426 254 46 21
33      5477    0.0     3       5128 286 45 18
34      5129    0.0     3       4818 251 47 13
35      4621    0.0     3       4362 204 38 17
36      4527    0.0     3       4260 214 30 23
37      4073    0.0     3       3801 221 30 21
38      3818    0.0     3       3595 183 24 16
39      3496    0.0     3       3295 165 22 14
40      3100    0.0     3       2931 137 18 14
41      2856    0.0     3       2688 137 18 13
42      2500    0.0     3       2333 130 25 12
43      2232    0.0     3       2093 116 13 10
44      1998    0.0     3       1902 75 9 12
45      1872    0.0     3       1755 101 8 8
46      1692    0.0     3       1580 84 14 14
47      1375    0.0     3       1293 60 16 6
48      1309    0.0     3       1223 68 10 8
49      1244    0.0     3       1142 79 14 9
50      1065    0.0     3       997 54 4 10
51      935     0.0     3       868 55 5 7
52      889     0.0     3       828 45 8 8
53      739     0.0     3       678 42 17 2
54      667     0.0     3       620 37 4 6
55      629     0.0     3       584 35 6 4
56      537     0.0     3       508 21 4 4
57      445     0.0     3       407 27 7 4
58      444     0.0     3       414 18 9 3
59      408     0.0     3       373 18 8 9
60      366     0.0     3       335 20 3 8
61      302     0.0     3       278 17 6 1
62      276     0.0     3       245 23 8
63      236     0.0     3       222 10 3 1
64      233     0.0     3       213 16 3 1
65      213     0.0     3       192 16 4 1
66      198     0.0     3       184 13 1
67      158     0.0     3       138 13 4 3
68      166     0.0     3       145 14 3 4
69      115     0.0     3       104 5 3 3
70      115     0.0     3       99 9 4 3
71      103     0.0     3       92 9 1 1
72      90      0.0     3       73 8 8 1
73      70      0.0     3       58 10 1 1
74      64      0.0     3       51 6 4 3
75      56      0.0     3       49 5 2
76      55      0.0     3       44 7 3 1
77      54      0.0     3       47 3 2 2
78      45      0.0     3       39 3 1 2
79      42      0.0     3       33 5 2 2
80      41      0.0     3       32 6 1 2
81      42      0.0     3       40 0 2
82      32      0.0     3       26 5 1
83      81      0.0     3       77 3 1
84      32      0.0     3       29 3
85      57      0.0     3       48 5 3 1
86      30      0.0     3       25 4 0 1
87      39      0.0     3       33 3 2 1
88      22      0.0     3       16 4 2
89      31      0.0     3       28 3
90      25      0.0     3       20 3 1 1
91      30      0.0     3       29 1
92      15      0.0     3       11 4
93      27      0.0     3       21 4 1 1
94      13      0.0     3       9 4
95      27      0.0     3       13 10 3 1
96      41      0.0     3       15 21 2 3
97      20      0.0     3       14 6
98      21      0.0     3       7 9 4 1
99      11      0.0     3       3 5 2 1
100     14      0.0     3       0 7 7
101     9853    0.0     3       13 8738 1011 91

## trimmomatic

trimmomatic PE /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/27_4C_mbnl_S19_L008_R1_001.trimmed.fastq.gz /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/27_4C_mbnl_S19_L008_R2_001.trimmed.fastq.gz /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/27_4C_mbnl_S19_L008_R1_001.trimmed_paired.fastq.gz /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/27_4C_mbnl_S19_L008_R1_001.trimmed_unpaired.fastq.gz /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/27_4C_mbnl_S19_L008_R2_001.trimmed_paired.fastq.gz /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/27_4C_mbnl_S19_L008_R2_001.trimmed_unpaired.fastq.gz LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35

Input Read Pairs: 7226430 Both Surviving: 6876955 (95.16%) Forward Only Surviving: 326783 (4.52%) Reverse Only Surviving: 5492 (0.08%) Dropped: 17200 (0.24%)
TrimmomaticPE: Completed successfully

trimmomatic PE /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/28_4D_mbnl_S20_L008_R1_001.trimmed.fastq.gz /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/28_4D_mbnl_S20_L008_R2_001.trimmed.fastq.gz /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/28_4D_mbnl_S20_L008_R1_001.trimmed_paired.fastq.gz /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/28_4D_mbnl_S20_L008_R1_001.trimmed_unpaired.fastq.gz /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/28_4D_mbnl_S20_L008_R2_001.trimmed_paired.fastq.gz /projects/bgmp/jpeplin5/bioinfo/Bi623/QAA/28_4D_mbnl_S20_L008_R2_001.trimmed_unpaired.fastq.gz LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35

Input Read Pairs: 12428766 Both Surviving: 11725400 (94.34%) Forward Only Surviving: 677662 (5.45%) Reverse Only Surviving: 8727 (0.07%) Dropped: 16977 (0.14%)
TrimmomaticPE: Completed successfully

## plotting

I used QAA_batch.py to make histogram plots for the read lengths. Saved those plots as 4C_PairedReads_Length.png and 4D_PairedReads_Length.png.

## PART 3 - Alignment and strand-specificity

For 27_4C_mbnl_S19_L008:
The number of mapped reads 13320040
The number of unmapped reads 434803

For 28_4D_mbnl_S20_L008:
The number of mapped reads 22657652
The number of unmapped reads 795284

I used htseq to count the reads that map to features:

for example:
htseq-count --stranded=yes --format sam RNAseqSAMAligned.out.sam Mus_musculus.GRCm39.107.gtf > 4Coutput.txt 
htseq-count --stranded=reverse --format sam RNAseqSAMAligned.out.sam Mus_musculus.GRCm39.107.gtf > 4C_rev_output.txt 
htseq-count --stranded=yes --format sam RNAseqSAMAligned.out.sam Mus_musculus.GRCm39.107.gtf > 4Doutput.txt 
htseq-count --stranded=reverse --format sam RNAseqSAMAligned.out.sam Mus_musculus.GRCm39.107.gtf > 4D_rev_output.txt 

for #12:

cat 4Coutput.txt | awk '{sum+=$2} END{print sum}'
6876955
cat 4C_rev_output.txt | awk '{sum+=$2} END{print sum}'
6876955
cat 4Doutput.txt | awk '{sum+=$2} END{print sum}'
11725400
cat 4D_rev_output.txt | awk '{sum+=$2} END{print sum}'
11725400

The data are not from strand-specific libraries because the forward and reverse strands have the same number of mapped reads, making up about 50% of the mapped reads.



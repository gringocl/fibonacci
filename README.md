# Fibonacci Number Exercise

Utilizing three different solutions to obtaining fibonacci numbers I encountered some vary interesting results

fibonacci.rb contains three namespaced methods and the benchamrking setup I used.

Fork this and play, share your results if you find something interesting

Tl;dr

The recursive method is on par at the beginning but soon begins to slow down.
The inject method seems twice as slow as the normal iterative method.
However the normal method runs out of steam at 8181 digits and the inject keeps chugging along.

## Benchmark results comparing two iterative solutions and one recursive solution
```
The Fibonacci result is 0
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 0            0.000000   0.000000   0.000000 (  0.000109)
Iterative for Fibonacci of 0            0.010000   0.000000   0.010000 (  0.000017)
Recursive for Fibonacci of 0            0.000000   0.000000   0.000000 (  0.000018)
---------------------------------------------------------------- total: 0.010000sec

                                            user     system      total        real
   Inject for Fibonacci of 0            0.000000   0.000000   0.000000 (  0.000080)
Iterative for Fibonacci of 0            0.000000   0.000000   0.000000 (  0.000020)
Recursive for Fibonacci of 0            0.000000   0.000000   0.000000 (  0.000021)

The Fibonacci result is 1
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 1            0.000000   0.000000   0.000000 (  0.000083)
Iterative for Fibonacci of 1            0.000000   0.000000   0.000000 (  0.000017)
Recursive for Fibonacci of 1            0.000000   0.000000   0.000000 (  0.000017)
---------------------------------------------------------------- total: 0.000000sec

                                            user     system      total        real
   Inject for Fibonacci of 1            0.000000   0.000000   0.000000 (  0.000105)
Iterative for Fibonacci of 1            0.000000   0.000000   0.000000 (  0.000021)
Recursive for Fibonacci of 1            0.000000   0.000000   0.000000 (  0.000022)

The Fibonacci result is 1
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 2            0.000000   0.000000   0.000000 (  0.000099)
Iterative for Fibonacci of 2            0.000000   0.000000   0.000000 (  0.000017)
Recursive for Fibonacci of 2            0.000000   0.000000   0.000000 (  0.000035)
---------------------------------------------------------------- total: 0.000000sec

                                            user     system      total        real
   Inject for Fibonacci of 2            0.000000   0.000000   0.000000 (  0.000108)
Iterative for Fibonacci of 2            0.000000   0.000000   0.000000 (  0.000020)
Recursive for Fibonacci of 2            0.000000   0.000000   0.000000 (  0.000039)

The Fibonacci result is 2
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 3            0.000000   0.000000   0.000000 (  0.000128)
Iterative for Fibonacci of 3            0.000000   0.000000   0.000000 (  0.000026)
Recursive for Fibonacci of 3            0.000000   0.000000   0.000000 (  0.000050)
---------------------------------------------------------------- total: 0.000000sec

                                            user     system      total        real
   Inject for Fibonacci of 3            0.000000   0.000000   0.000000 (  0.000125)
Iterative for Fibonacci of 3            0.000000   0.000000   0.000000 (  0.000028)
Recursive for Fibonacci of 3            0.000000   0.000000   0.000000 (  0.000056)

The Fibonacci result is 3
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 4            0.000000   0.000000   0.000000 (  0.000129)
Iterative for Fibonacci of 4            0.000000   0.000000   0.000000 (  0.000033)
Recursive for Fibonacci of 4            0.000000   0.000000   0.000000 (  0.000075)
---------------------------------------------------------------- total: 0.000000sec

                                            user     system      total        real
   Inject for Fibonacci of 4            0.000000   0.000000   0.000000 (  0.000140)
Iterative for Fibonacci of 4            0.000000   0.000000   0.000000 (  0.000038)
Recursive for Fibonacci of 4            0.000000   0.000000   0.000000 (  0.000086)

The Fibonacci result is 5
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 5            0.000000   0.000000   0.000000 (  0.000204)
Iterative for Fibonacci of 5            0.000000   0.000000   0.000000 (  0.000038)
Recursive for Fibonacci of 5            0.000000   0.000000   0.000000 (  0.000177)
---------------------------------------------------------------- total: 0.000000sec

                                            user     system      total        real
   Inject for Fibonacci of 5            0.000000   0.000000   0.000000 (  0.000158)
Iterative for Fibonacci of 5            0.000000   0.000000   0.000000 (  0.000042)
Recursive for Fibonacci of 5            0.000000   0.000000   0.000000 (  0.000130)

The Fibonacci result is 8
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 6            0.000000   0.000000   0.000000 (  0.000168)
Iterative for Fibonacci of 6            0.000000   0.000000   0.000000 (  0.000045)
Recursive for Fibonacci of 6            0.000000   0.000000   0.000000 (  0.000782)
---------------------------------------------------------------- total: 0.000000sec

                                            user     system      total        real
   Inject for Fibonacci of 6            0.000000   0.000000   0.000000 (  0.000164)
Iterative for Fibonacci of 6            0.000000   0.000000   0.000000 (  0.000047)
Recursive for Fibonacci of 6            0.000000   0.000000   0.000000 (  0.000267)

The Fibonacci result is 13
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 7            0.000000   0.000000   0.000000 (  0.000299)
Iterative for Fibonacci of 7            0.000000   0.000000   0.000000 (  0.000053)
Recursive for Fibonacci of 7            0.000000   0.000000   0.000000 (  0.010810)
---------------------------------------------------------------- total: 0.000000sec

                                            user     system      total        real
   Inject for Fibonacci of 7            0.000000   0.000000   0.000000 (  0.000179)
Iterative for Fibonacci of 7            0.000000   0.000000   0.000000 (  0.000053)
Recursive for Fibonacci of 7            0.000000   0.000000   0.000000 (  0.000322)

The Fibonacci result is 21
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 8            0.000000   0.000000   0.000000 (  0.000181)
Iterative for Fibonacci of 8            0.000000   0.000000   0.000000 (  0.000055)
Recursive for Fibonacci of 8            0.000000   0.000000   0.000000 (  0.000503)
---------------------------------------------------------------- total: 0.000000sec

                                            user     system      total        real
   Inject for Fibonacci of 8            0.000000   0.000000   0.000000 (  0.000203)
Iterative for Fibonacci of 8            0.000000   0.000000   0.000000 (  0.000056)
Recursive for Fibonacci of 8            0.000000   0.000000   0.000000 (  0.000505)

The Fibonacci result is 34
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 9            0.000000   0.000000   0.000000 (  0.000201)
Iterative for Fibonacci of 9            0.000000   0.000000   0.000000 (  0.000059)
Recursive for Fibonacci of 9            0.000000   0.000000   0.000000 (  0.000781)
---------------------------------------------------------------- total: 0.000000sec

                                            user     system      total        real
   Inject for Fibonacci of 9            0.000000   0.000000   0.000000 (  0.000214)
Iterative for Fibonacci of 9            0.000000   0.000000   0.000000 (  0.000062)
Recursive for Fibonacci of 9            0.000000   0.000000   0.000000 (  0.000820)

The Fibonacci result is 55
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 10           0.000000   0.000000   0.000000 (  0.000217)
Iterative for Fibonacci of 10           0.000000   0.000000   0.000000 (  0.000065)
Recursive for Fibonacci of 10           0.000000   0.000000   0.000000 (  0.001255)
---------------------------------------------------------------- total: 0.000000sec

                                            user     system      total        real
   Inject for Fibonacci of 10           0.000000   0.000000   0.000000 (  0.000234)
Iterative for Fibonacci of 10           0.000000   0.000000   0.000000 (  0.000068)
Recursive for Fibonacci of 10           0.010000   0.000000   0.010000 (  0.001323)

The Fibonacci result is 89
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 11           0.000000   0.000000   0.000000 (  0.000234)
Iterative for Fibonacci of 11           0.000000   0.000000   0.000000 (  0.000070)
Recursive for Fibonacci of 11           0.000000   0.000000   0.000000 (  0.002025)
---------------------------------------------------------------- total: 0.000000sec

                                            user     system      total        real
   Inject for Fibonacci of 11           0.000000   0.000000   0.000000 (  0.000233)
Iterative for Fibonacci of 11           0.000000   0.000000   0.000000 (  0.000074)
Recursive for Fibonacci of 11           0.010000   0.000000   0.010000 (  0.002235)

The Fibonacci result is 144
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 12           0.000000   0.000000   0.000000 (  0.000268)
Iterative for Fibonacci of 12           0.000000   0.000000   0.000000 (  0.000078)
Recursive for Fibonacci of 12           0.000000   0.000000   0.000000 (  0.003421)
---------------------------------------------------------------- total: 0.000000sec

                                            user     system      total        real
   Inject for Fibonacci of 12           0.000000   0.000000   0.000000 (  0.000252)
Iterative for Fibonacci of 12           0.000000   0.000000   0.000000 (  0.000078)
Recursive for Fibonacci of 12           0.000000   0.000000   0.000000 (  0.003624)

The Fibonacci result is 233
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 13           0.000000   0.000000   0.000000 (  0.000283)
Iterative for Fibonacci of 13           0.000000   0.000000   0.000000 (  0.000082)
Recursive for Fibonacci of 13           0.010000   0.000000   0.010000 (  0.008271)
---------------------------------------------------------------- total: 0.010000sec

                                            user     system      total        real
   Inject for Fibonacci of 13           0.000000   0.000000   0.000000 (  0.000276)
Iterative for Fibonacci of 13           0.000000   0.000000   0.000000 (  0.000085)
Recursive for Fibonacci of 13           0.010000   0.000000   0.010000 (  0.007632)

The Fibonacci result is 377
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 14           0.000000   0.000000   0.000000 (  0.000268)
Iterative for Fibonacci of 14           0.000000   0.000000   0.000000 (  0.000087)
Recursive for Fibonacci of 14           0.010000   0.000000   0.010000 (  0.009859)
---------------------------------------------------------------- total: 0.010000sec

                                            user     system      total        real
   Inject for Fibonacci of 14           0.000000   0.000000   0.000000 (  0.000286)
Iterative for Fibonacci of 14           0.000000   0.000000   0.000000 (  0.000089)
Recursive for Fibonacci of 14           0.010000   0.000000   0.010000 (  0.009428)

The Fibonacci result is 610
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 15           0.000000   0.000000   0.000000 (  0.000302)
Iterative for Fibonacci of 15           0.000000   0.000000   0.000000 (  0.000094)
Recursive for Fibonacci of 15           0.020000   0.000000   0.020000 (  0.021669)
---------------------------------------------------------------- total: 0.020000sec

                                            user     system      total        real
   Inject for Fibonacci of 15           0.000000   0.000000   0.000000 (  0.000307)
Iterative for Fibonacci of 15           0.000000   0.000000   0.000000 (  0.000097)
Recursive for Fibonacci of 15           0.020000   0.000000   0.020000 (  0.014523)

The Fibonacci result is 987
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 16           0.000000   0.000000   0.000000 (  0.000291)
Iterative for Fibonacci of 16           0.000000   0.000000   0.000000 (  0.000098)
Recursive for Fibonacci of 16           0.020000   0.000000   0.020000 (  0.022096)
---------------------------------------------------------------- total: 0.020000sec

                                            user     system      total        real
   Inject for Fibonacci of 16           0.000000   0.000000   0.000000 (  0.000309)
Iterative for Fibonacci of 16           0.000000   0.000000   0.000000 (  0.000099)
Recursive for Fibonacci of 16           0.020000   0.000000   0.020000 (  0.023346)

The Fibonacci result is 1597
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 17           0.000000   0.000000   0.000000 (  0.000306)
Iterative for Fibonacci of 17           0.000000   0.000000   0.000000 (  0.000103)
Recursive for Fibonacci of 17           0.040000   0.000000   0.040000 (  0.038699)
---------------------------------------------------------------- total: 0.040000sec

                                            user     system      total        real
   Inject for Fibonacci of 17           0.000000   0.000000   0.000000 (  0.000339)
Iterative for Fibonacci of 17           0.000000   0.000000   0.000000 (  0.000104)
Recursive for Fibonacci of 17           0.040000   0.000000   0.040000 (  0.037801)

The Fibonacci result is 2584
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 18           0.000000   0.000000   0.000000 (  0.000338)
Iterative for Fibonacci of 18           0.000000   0.000000   0.000000 (  0.000109)
Recursive for Fibonacci of 18           0.060000   0.000000   0.060000 (  0.057695)
---------------------------------------------------------------- total: 0.060000sec

                                            user     system      total        real
   Inject for Fibonacci of 18           0.000000   0.000000   0.000000 (  0.000355)
Iterative for Fibonacci of 18           0.000000   0.000000   0.000000 (  0.000109)
Recursive for Fibonacci of 18           0.060000   0.000000   0.060000 (  0.061941)
The Fibonacci result is 4181

Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 19           0.000000   0.000000   0.000000 (  0.000337)
Iterative for Fibonacci of 19           0.000000   0.000000   0.000000 (  0.000115)
Recursive for Fibonacci of 19           0.090000   0.000000   0.090000 (  0.093499)
---------------------------------------------------------------- total: 0.090000sec

                                            user     system      total        real
   Inject for Fibonacci of 19           0.000000   0.000000   0.000000 (  0.000384)
Iterative for Fibonacci of 19           0.000000   0.000000   0.000000 (  0.000114)
Recursive for Fibonacci of 19           0.100000   0.000000   0.100000 (  0.177432)

The Fibonacci result is 6765
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 20           0.000000   0.000000   0.000000 (  0.000365)
Iterative for Fibonacci of 20           0.000000   0.000000   0.000000 (  0.000120)
Recursive for Fibonacci of 20           0.150000   0.000000   0.150000 (  0.228286)
---------------------------------------------------------------- total: 0.150000sec

                                            user     system      total        real
   Inject for Fibonacci of 20           0.000000   0.000000   0.000000 (  0.000619)
Iterative for Fibonacci of 20           0.000000   0.000000   0.000000 (  0.000121)
Recursive for Fibonacci of 20           0.160000   0.000000   0.160000 (  0.163765)

The Fibonacci result is 10946
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 21           0.000000   0.000000   0.000000 (  0.000424)
Iterative for Fibonacci of 21           0.000000   0.000000   0.000000 (  0.000126)
Recursive for Fibonacci of 21           0.240000   0.000000   0.240000 (  0.250934)
---------------------------------------------------------------- total: 0.240000sec

                                            user     system      total        real
   Inject for Fibonacci of 21           0.000000   0.000000   0.000000 (  0.000402)
Iterative for Fibonacci of 21           0.000000   0.000000   0.000000 (  0.000126)
Recursive for Fibonacci of 21           0.260000   0.000000   0.260000 (  0.267858)

The Fibonacci result is 17711
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 22           0.000000   0.000000   0.000000 (  0.000380)
Iterative for Fibonacci of 22           0.000000   0.000000   0.000000 (  0.000132)
Recursive for Fibonacci of 22           0.400000   0.000000   0.400000 (  0.419761)
---------------------------------------------------------------- total: 0.400000sec

                                            user     system      total        real
   Inject for Fibonacci of 22           0.000000   0.000000   0.000000 (  0.000424)
Iterative for Fibonacci of 22           0.000000   0.000000   0.000000 (  0.000133)
Recursive for Fibonacci of 22           0.420000   0.000000   0.420000 (  0.424381)

The Fibonacci result is 28657
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 23           0.000000   0.000000   0.000000 (  0.000391)
Iterative for Fibonacci of 23           0.000000   0.000000   0.000000 (  0.000137)
Recursive for Fibonacci of 23           0.650000   0.000000   0.650000 (  0.835997)
---------------------------------------------------------------- total: 0.650000sec

                                            user     system      total        real
   Inject for Fibonacci of 23           0.000000   0.000000   0.000000 (  0.000487)
Iterative for Fibonacci of 23           0.000000   0.000000   0.000000 (  0.000136)
Recursive for Fibonacci of 23           0.670000   0.000000   0.670000 (  0.842180)

The Fibonacci result is 46368
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 24           0.010000   0.000000   0.010000 (  0.000409)
Iterative for Fibonacci of 24           0.000000   0.000000   0.000000 (  0.000425)
Recursive for Fibonacci of 24           1.050000   0.010000   1.060000 (  1.097510)
---------------------------------------------------------------- total: 1.070000sec

                                            user     system      total        real
   Inject for Fibonacci of 24           0.000000   0.000000   0.000000 (  0.000503)
Iterative for Fibonacci of 24           0.000000   0.000000   0.000000 (  0.000142)
Recursive for Fibonacci of 24           1.100000   0.000000   1.100000 (  1.260544)

The Fibonacci result is 75025
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 25           0.000000   0.000000   0.000000 (  0.000425)
Iterative for Fibonacci of 25           0.000000   0.000000   0.000000 (  0.000148)
Recursive for Fibonacci of 25           1.710000   0.000000   1.710000 (  1.888707)
---------------------------------------------------------------- total: 1.710000sec

                                            user     system      total        real
   Inject for Fibonacci of 25           0.000000   0.000000   0.000000 (  0.000466)
Iterative for Fibonacci of 25           0.000000   0.000000   0.000000 (  0.000148)
Recursive for Fibonacci of 25           1.790000   0.010000   1.800000 (  2.201282)

The Fibonacci result is 121393
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 26           0.000000   0.000000   0.000000 (  0.000446)
Iterative for Fibonacci of 26           0.000000   0.000000   0.000000 (  0.000154)
Recursive for Fibonacci of 26           2.750000   0.000000   2.750000 (  3.191616)
---------------------------------------------------------------- total: 2.750000sec

                                            user     system      total        real
   Inject for Fibonacci of 26           0.010000   0.000000   0.010000 (  0.000533)
Iterative for Fibonacci of 26           0.000000   0.000000   0.000000 (  0.000154)
Recursive for Fibonacci of 26           2.900000   0.010000   2.910000 (  3.342222)

The Fibonacci result is 196418
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 27           0.000000   0.000000   0.000000 (  0.000445)
Iterative for Fibonacci of 27           0.000000   0.000000   0.000000 (  0.000159)
Recursive for Fibonacci of 27           4.460000   0.010000   4.470000 (  5.179264)
---------------------------------------------------------------- total: 4.470000sec

                                            user     system      total        real
   Inject for Fibonacci of 27           0.000000   0.000000   0.000000 (  0.000547)
Iterative for Fibonacci of 27           0.000000   0.000000   0.000000 (  0.000161)
Recursive for Fibonacci of 27           4.720000   0.010000   4.730000 (  5.386379)

The Fibonacci result is 317811
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 28           0.000000   0.000000   0.000000 (  0.000468)
Iterative for Fibonacci of 28           0.000000   0.000000   0.000000 (  0.000165)
Recursive for Fibonacci of 28           7.180000   0.020000   7.200000 (  8.198696)
---------------------------------------------------------------- total: 7.200000sec

                                            user     system      total        real
   Inject for Fibonacci of 28           0.000000   0.000000   0.000000 (  0.000511)
Iterative for Fibonacci of 28           0.000000   0.000000   0.000000 (  0.000185)
Recursive for Fibonacci of 28           7.770000   0.010000   7.780000 (  9.027045)

The Fibonacci result is 514229
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 29           0.000000   0.000000   0.000000 (  0.000487)
Iterative for Fibonacci of 29           0.000000   0.000000   0.000000 (  0.000172)
Recursive for Fibonacci of 29          11.590000   0.030000  11.620000 ( 13.407144)
--------------------------------------------------------------- total: 11.620000sec

                                            user     system      total        real
   Inject for Fibonacci of 29           0.000000   0.000000   0.000000 (  0.000572)
Iterative for Fibonacci of 29           0.000000   0.000000   0.000000 (  0.000173)
Recursive for Fibonacci of 29          12.850000   0.030000  12.880000 ( 14.918736)

The Fibonacci result is 832040
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 30           0.000000   0.000000   0.000000 (  0.000488)
Iterative for Fibonacci of 30           0.000000   0.000000   0.000000 (  0.000175)
Recursive for Fibonacci of 30          18.690000   0.040000  18.730000 ( 21.588548)
--------------------------------------------------------------- total: 18.730000sec

                                            user     system      total        real
   Inject for Fibonacci of 30           0.000000   0.000000   0.000000 (  0.000533)
Iterative for Fibonacci of 30           0.000000   0.000000   0.000000 (  0.000182)
Recursive for Fibonacci of 30          20.950000   0.050000  21.000000 ( 24.255544)

The Fibonacci result is 1346269
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 31           0.000000   0.000000   0.000000 (  0.000511)
Iterative for Fibonacci of 31           0.000000   0.000000   0.000000 (  0.000181)
Recursive for Fibonacci of 31          30.210000   0.070000  30.280000 ( 35.488649)
--------------------------------------------------------------- total: 30.280000sec

                                            user     system      total        real
   Inject for Fibonacci of 31           0.000000   0.000000   0.000000 (  0.000528)
Iterative for Fibonacci of 31           0.000000   0.000000   0.000000 (  0.000186)
Recursive for Fibonacci of 31          34.360000   0.080000  34.440000 ( 43.118882)

The Fibonacci result is 2178309
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 32           0.000000   0.000000   0.000000 (  0.000522)
Iterative for Fibonacci of 32           0.000000   0.000000   0.000000 (  0.000188)
Recursive for Fibonacci of 32          48.910000   0.130000  49.040000 ( 62.954074)
--------------------------------------------------------------- total: 49.040000sec

                                            user     system      total        real
   Inject for Fibonacci of 32           0.000000   0.000000   0.000000 (  0.000567)
Iterative for Fibonacci of 32           0.000000   0.000000   0.000000 (  0.000194)
Recursive for Fibonacci of 32          56.630000   0.150000  56.780000 ( 71.542102)

The Fibonacci result is 3524578
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 33           0.010000   0.000000   0.010000 (  0.000538)
Iterative for Fibonacci of 33           0.000000   0.000000   0.000000 (  0.000192)
Recursive for Fibonacci of 33          79.060000   0.220000  79.280000 (100.775606)
--------------------------------------------------------------- total: 79.290000sec

                                            user     system      total        real
   Inject for Fibonacci of 33           0.000000   0.000000   0.000000 (  0.000585)
Iterative for Fibonacci of 33           0.000000   0.000000   0.000000 (  0.000199)
Recursive for Fibonacci of 33          92.670000   0.270000  92.940000 (124.607041)

The Fibonacci result is 5702887
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 34           0.000000   0.000000   0.000000 (  0.000875)
Iterative for Fibonacci of 34           0.000000   0.000000   0.000000 (  0.000353)
Recursive for Fibonacci of 34         128.310000   0.320000 128.630000 (159.201450)
-------------------------------------------------------------- total: 128.630000sec

                                            user     system      total        real
   Inject for Fibonacci of 34           0.000000   0.000000   0.000000 (  0.000600)
Iterative for Fibonacci of 34           0.000000   0.000000   0.000000 (  0.000205)
Recursive for Fibonacci of 34         150.650000   0.400000 151.050000 (201.553084)

The Fibonacci result is 9227465
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 35           0.000000   0.000000   0.000000 (  0.000572)
Iterative for Fibonacci of 35           0.000000   0.000000   0.000000 (  0.000208)
Recursive for Fibonacci of 35         208.120000   0.480000 208.600000 (260.468744)
-------------------------------------------------------------- total: 208.600000sec

                                            user     system      total        real
   Inject for Fibonacci of 35           0.000000   0.000000   0.000000 (  0.000610)
Iterative for Fibonacci of 35           0.000000   0.000000   0.000000 (  0.000209)
Recursive for Fibonacci of 35         245.610000   0.570000 246.180000 (306.343994)
```

Next I benchmarked the two Iterative solutions for very large numbers and found some very interesting results

```
The Fibonacci result is a 86781 digit number
Rehearsal -------------------------------------------------------------------------
   Inject for Fibonacci of 999999      26.090000  11.040000  37.130000 ( 46.362817)
Iterative for Fibonacci of 999999     fibonacci.rb:32: stack level too deep (SystemStackError)
```

So I worked my way down and found some magic numbers

```
The Fibonacci result is a 710 digit number
Rehearsal --------------------------------------------------------------------
   Inject for Fibonacci of 8175    0.120000   0.010000   0.130000 (  0.210859)
Iterative for Fibonacci of 8175    0.090000   0.010000   0.100000 (  0.111018)
----------------------------------------------------------- total: 0.230000sec

                                       user     system      total        real
   Inject for Fibonacci of 8175    0.110000   0.010000   0.120000 (  0.150395)
Iterative for Fibonacci of 8175    0.090000   0.010000   0.100000 (  0.206172)

The Fibonacci result is a 710 digit number
Rehearsal --------------------------------------------------------------------
   Inject for Fibonacci of 8176    0.110000   0.010000   0.120000 (  0.227057)
Iterative for Fibonacci of 8176    0.100000   0.010000   0.110000 (  0.112075)
----------------------------------------------------------- total: 0.230000sec

                                       user     system      total        real
   Inject for Fibonacci of 8176    0.100000   0.000000   0.100000 (  0.109418)
Iterative for Fibonacci of 8176    0.080000   0.000000   0.080000 (  0.088034)

The Fibonacci result is a 710 digit number
Rehearsal --------------------------------------------------------------------
   Inject for Fibonacci of 8177    0.110000   0.010000   0.120000 (  0.134252)
Iterative for Fibonacci of 8177    0.100000   0.010000   0.110000 (  0.180066)
----------------------------------------------------------- total: 0.230000sec

                                       user     system      total        real
   Inject for Fibonacci of 8177    0.110000   0.010000   0.120000 (  0.194794)
Iterative for Fibonacci of 8177    0.090000   0.010000   0.100000 (  0.108133)

The Fibonacci result is a 710 digit number
Rehearsal --------------------------------------------------------------------
   Inject for Fibonacci of 8178    0.110000   0.010000   0.120000 (  0.108498)
Iterative for Fibonacci of 8178    0.100000   0.000000   0.100000 (  0.108469)
----------------------------------------------------------- total: 0.220000sec

                                       user     system      total        real
   Inject for Fibonacci of 8178    0.100000   0.000000   0.100000 (  0.106459)
Iterative for Fibonacci of 8178    0.090000   0.010000   0.100000 (  0.100547)

The Fibonacci result is a 710 digit number
Rehearsal --------------------------------------------------------------------
   Inject for Fibonacci of 8179    0.110000   0.000000   0.110000 (  0.215306)
Iterative for Fibonacci of 8179    0.100000   0.020000   0.120000 (  0.174525)
----------------------------------------------------------- total: 0.230000sec

                                       user     system      total        real
   Inject for Fibonacci of 8179    0.100000   0.000000   0.100000 (  0.113046)
Iterative for Fibonacci of 8179    0.090000   0.010000   0.100000 (  0.105589)

The Fibonacci result is a 710 digit number
Rehearsal --------------------------------------------------------------------
   Inject for Fibonacci of 8180    0.100000   0.010000   0.110000 (  0.113175)
Iterative for Fibonacci of 8180    0.100000   0.000000   0.100000 (  0.099212)
----------------------------------------------------------- total: 0.210000sec

                                       user     system      total        real
   Inject for Fibonacci of 8180    0.100000   0.000000   0.100000 (  0.112027)
Iterative for Fibonacci of 8180    0.090000   0.010000   0.100000 (  0.179645)

The Fibonacci result is a 710 digit number
Rehearsal --------------------------------------------------------------------
   Inject for Fibonacci of 8181    0.120000   0.000000   0.120000 (  0.208102)
Iterative for Fibonacci of 8181  fibonacci.rb:31: stack level too deep (SystemStackError)
```

This struck me as odd as it is only registering a 710 digit number in this test.
However in my first large number test is counted into the 86xxx range.

A few things I've learned are recursive is slow, but how ruby internally handles
these large numbers is interesting.  Further investigation is needed to understand
what is going on.



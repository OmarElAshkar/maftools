## CHANGES IN VERSION 2.5.05 (development)
### NEW FUNCTIONS AND FEATURES

1. Added `refAltMat` function. Issue: [550](https://github.com/PoisonAlien/maftools/issues/550)


## CHANGES IN VERSION 2.4.10 (GitHub master)
### BUG FIXES

### ENHANCEMENTS

1. Added `minMut` argument to `oncoplot`. Issue: [549](https://github.com/PoisonAlien/maftools/issues/549)

## CHANGES IN VERSION 2.4.05 (Relase/Bioconductor version)
### BUG FIXES

1. Bugfix in annotation legend order in `oncoplot`. Issue: [541](https://github.com/PoisonAlien/maftools/issues/541)
2. Error in `plotCBSsegments`. Issue: [539](https://github.com/PoisonAlien/maftools/issues/539)
3. `merge_mafs` bug fix due to discrepancy in column names. Issue: [538](https://github.com/PoisonAlien/maftools/issues/538)
4. `readGistic` TCGA sample names bug fix. Issue: [536](https://github.com/PoisonAlien/maftools/issues/536)
5. Highlight most significant entry when a variants overlaps with multiple CNV regions Issue: [524](https://github.com/PoisonAlien/maftools/issues/524) 
6. `genesToBarcodes` sample selection fix
7. `coOncoplot` bug fix with `showSampleNames` argument. Issue: [306](https://github.com/PoisonAlien/maftools/issues/306)
8. `removeNonMutated` bug fix with `oncoplot` argument. Issue: [530](https://github.com/PoisonAlien/maftools/issues/530)

### ENHANCEMENTS

1. Make `flags` internal function with top 100 genes. Issue: [542](https://github.com/PoisonAlien/maftools/issues/542)
2. Add legend to `gisticBubblePlot`. Issue: [544](https://github.com/PoisonAlien/maftools/issues/544)
3. Add `bgCol` and `borderCol` to  `gisticOncoPlot`. Issue: [#533](https://github.com/PoisonAlien/maftools/issues/533)
4. Allow multiple CN types in oncoplot Issue: [#490](https://github.com/PoisonAlien/maftools/issues/490)
5. Allow `getSampleSummary` to include non mutated samples Issue: [#527](https://github.com/PoisonAlien/maftools/issues/527)
6. Added `color` argument to `plotVaf` for manual color codes Issue: [#531](https://github.com/PoisonAlien/maftools/issues/531)
7. Added `rm_zero` argument to `tcgaCompare`

## CHANGES IN VERSION 2.4.00
### BUG FIXES

1. `lollipopPlot2` error with zero mutation Issue: [#480](https://github.com/PoisonAlien/maftools/issues/480)
2. `inferHeterogeneity` PR [#473](https://github.com/PoisonAlien/maftools/issues/473)
3. `oncoplot` cnv crosses border [#472](https://github.com/PoisonAlien/maftools/issues/472)
4. Avoid wrongly naming columns in `annovarToMaf` Issue: [#457](https://github.com/PoisonAlien/maftools/issues/457)
5. Duplicated color code Issue: [#452](https://github.com/PoisonAlien/maftools/issues/452)
6. oncoplot with exprsTbl leads to wrong alignment Issue: [#451](https://github.com/PoisonAlien/maftools/issues/451)
7. plotMafSummary with single sample Issue: [#449](https://github.com/PoisonAlien/maftools/issues/449)
8. Avoid empty spaces and quoates while reading funcotator MAF Issue: [#403](https://github.com/PoisonAlien/maftools/issues/403) [#397](https://github.com/PoisonAlien/maftools/issues/397)

### ENHANCEMENTS

1. `OncogenicPathways` improvements Issue: [#505](https://github.com/PoisonAlien/maftools/pull/509)
2. Added `showSum`, `colNC`, `nShiftSymbols`, `sigSymbolsSize`, `sigSymbolsFontSize`, `pvSymbols` arguments to `somaticInteractions` PR: [#505](https://github.com/PoisonAlien/maftools/pull/505) Thanks [zmiimz](https://github.com/zmiimz)
3. Added `anno_height`, `drawBox`, `drawExtraBar` arguments to `oncoplot` PR: [#501](https://github.com/PoisonAlien/maftools/pull/501) Thanks [Kai Gu](https://github.com/kaigu1990)
4. Added `decreasing` argument to `tcgaComapre` Issue: [#497](https://github.com/PoisonAlien/maftools/issues/497)
5. Added startgain and startlost to `annovarToMaf` Issue: [#487](https://github.com/PoisonAlien/maftools/issues/487)
6. `y_lims` argument in gisticChromPlot Issue: [#485](https://github.com/PoisonAlien/maftools/issues/485)
7. Added support for highlighting multiple additionalFeatures Issue: [#476](https://github.com/PoisonAlien/maftools/issues/476)
8. Pairwise t-test and mutational load in `tcgaCompare` Issue: [#453](https://github.com/PoisonAlien/maftools/issues/453)
9. Added `titleText` argument to `oncoplot` Issue: [#448](https://github.com/PoisonAlien/maftools/issues/448)
10. Highlight mutated genes on gisticChromplot Issue: [#443](https://github.com/PoisonAlien/maftools/issues/443)
11. Added `legend_height` argument to `oncoplot` Issue: [#346](https://github.com/PoisonAlien/maftools/issues/346)
12. Added `bgBorderCol` `domainBorderCol` `showLegend` argument to `lollipopPlot`

### NEW FUNCTIONS AND FEATURES

1. `tmb` Simple tumor mutation burden estimation function.
2. `setdiffMAF` and `intersectMAF`. Set operations for MAF files. PR: [#508](https://github.com/PoisonAlien/maftools/pull/508) Thanks [Shixiang Wang](https://github.com/ShixiangWang)
3. `tcgaDriverBP` Compare genes to known TCGA drivers and their biological pathways
4. `vafCompare` plots vaf distribution of target genes from two cohorts Issue: [#495](https://github.com/PoisonAlien/maftools/issues/495)
5. `coBarplot` side-by-side barplot for maf comparison Issue: [#486](https://github.com/PoisonAlien/maftools/issues/486)
6. Group genes in `oncoplot` by specific pathways. This can be done by setting `pathways = 'auto'` or by providing a two column data.frame/tsv-file with Gene names and their corresponding pathway belongings.
7. Oncoplot gains `rightBarData` and `leftBarData` arguments for user specific side bar plots.
8. Default flatUI colors for lollipop plots

### Deprecated

1. `geneCloud` and `pancanComparison`

#' Create Ref-Alt matrix
#' @details A small function to create a Reference, ALt allele matrix for every muatted loci
#' @param m an \code{\link{MAF}} object
#' @param useSyn Use synonymous variants. Default FALSE
#' @param subWT Substitite WT allele with `Ref>Ref`. Default FALSE and fills with the value passed to `fillChar`
#' @param fillChar Default '.' Only applicable when `subWT`` is `TRUE`
#' @export
#' @examples
#' laml.maf <- system.file("extdata", "tcga_laml.maf.gz", package = "maftools")
#' laml <- read.maf(maf = laml.maf)
#'@return data.table
refAltMat = function(m, useSyn = FALSE, fillChar = '.', subWT = FALSE){

  query = subsetMaf(
    maf = m,
    fields = "Chromosome",
    includeSyn = useSyn,
    mafObj = FALSE,
    restrictTo = "mutations",
    query = "Variant_Type != 'CNV'"
  )

  query[, loci_id:= paste0(Chromosome, ":", Start_Position, ":", Hugo_Symbol)]
  query[, refalt:= paste0(Reference_Allele, ">", Tumor_Seq_Allele2)]
  query_mlt = data.table::dcast(
    data = query,
    loci_id + Reference_Allele + Tumor_Seq_Allele2 ~ Tumor_Sample_Barcode,
    value.var = "refalt",
    fill = fillChar, fun.aggregate = function(x){
      x = unique(as.character(x))
      ifelse(test = length(x) > 1, yes = paste(x, collapse = "|"), no = x)
    }
  )

  if(subWT){
    query_mlt = data.table::rbindlist(apply(query_mlt, 1, function(x) {
      data.frame(lapply(x, FUN = function(y) ifelse(test = y == fillChar, yes = paste0(x[2], ">", x[3]), no = y)))
    }))
  }

  query_mlt
}

# specificity is generated in the main_CellTypeAnalysis_Preperation.r file
cell.list.dist <- function(hitGenes,sct_data,annotLevel){
    ValidGenes = rownames(sct_data[[annotLevel]]$specificity)[rownames(sct_data[[annotLevel]]$specificity) %in% hitGenes]
    temp = sct_data[[annotLevel]]$specificity[ValidGenes,]

    # If the temp is returned as a vector
    if(is.null(dim(temp)[1])){
        return(temp)
    }else{
        # Otherwise rows across each column
        return(apply(temp,2,sum))
    }
}

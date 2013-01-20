rangedist <- function(x){
  min <- range(x, na.rm=TRUE)[1]
  max <- range(x, na.rm=TRUE)[2]
  dist <- max - min
  return(dist)
}

coresize <- function(x, type="unanimity", voteweights=NULL, popweights=NULL, qmin=NULL, qvote=NULL, qpop=NULL)
{
  x <- as.vector(x)
  if (type ==  "unanimity"){
    return(rangedist(x))
  }
  if (type == "qmv"){
    n <- length(x)
    pivots <- rep(NA,2)
    for (i in seq(0,1)){
      p_order <- order(x,decreasing=i)
      p_s <- x[p_order]
      v_s <- voteweights[p_order]
      pop_s <- popweights[p_order]
      qvotecrit <- seq(1,n)[cumsum(v_s) > qvote]
      qpopcrit <- seq(1,n)[cumsum(pop_s) > qpop]
      pivots[i+1] <- p_s[max(qmin,qvotecrit[1],qpopcrit[1])]
    }
    return(rangedist(pivots))
  }
  return(NA)
}

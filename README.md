R function to calculate the one-dimensional unanimity / QMV core size given actors' preferences and voting weights. Can be used to calculate the core size in the EU Council of Ministers. The `eucouncil_weights.csv` contains data on the EU Council voting weights (EU9-EU25), the corresponding `eucouncil_weights.md` describes the data. 


# Example

This examples calculates the unanimity and QMV core size for a hypothetical EU Council with 5 members. Two sets of votingweights are used (`voteweights, popweights`) and the corresponding voting threshold rules (`qvote,qpop`). `qmin` is the minority criteria (at least one member has to agree). 

```
x <- c(0,15,50,80,400)
voteweights <- c(10,20,20,10,30)
popweights <- c(5,10,40,50,5)
qmin <- 1  	# miniority criteria
qvote <- 9		# voting weights threshold
qpop <- 4		# population weights threshold

( unanimity <- coresize(x, "unanimity", voteweights=voteweights, popweights=popweights, qmin=qmin, qvote=qvote, qpop=qpop) )
( qmv <- coresize(x, "qmv", voteweights=voteweights, popweights=popweights, qmin=qmin, qvote=qvote, qpop=qpop) )
```

When you want to caculate the core size using only voting weights (but not the population weights) just use a threshold that is always passed. For example: 

```
popweights <- rep(10,5)
qpop <- qpop1 
```

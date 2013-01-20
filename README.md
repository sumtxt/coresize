R function to calculate the unanimity / QMV core size given actors' preferences and vote-weights

# Example

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
	

Data: EU COUNIL VOTING REGIMES
==============================

The csv contains data on the voting weights for the EU members across different treaties EU9,EU12,EU15,EU25 (Amsterdam), EU25 (Nice) and the corresponding voting rules. Please, consult the first source for further information. The data can be used with the coresize.R function. 

# SOURCE:

* [The Council of the European Union. 2012.](http://europa.eu/legislation_summaries/institutional_affairs/treaties/nice_treaty/nice_treaty_council_en.htm)
* [Bräuninger. 2005. Indices of Power (IOP 2.0).](http://www.tbraeuninger.de/IOP.html)

# VARIABLES:

* id - country ID
* name - country name 
* eu9,eu12, eu15 - voting weights for the EU9, EU12 and EU15 (see below)
* eu25_bv - voting weights for the EU25 (Amsterdam Treaty) 
* eu25_bp - population weights for the EU25 (Amsterdam Treaty) 
* eu25_av - voting weights for the EU25 (Nice Treaty) 
* eu25_ap - population weights for the EU25 (Nice Treaty)

# THRESHOLDS: 

* qmin - minimum number of members 
* qvote - minimum voting weights
* qpop - minimum population weights

# REGIMES 

## EU9 

* unanimity only (no QMV)

## EU10 

* `end = as.Date("1986-01-01")`
* `qmin=6;  qvote=45`
	
## EU12

* `start =as.Date("1986-01-02"); end = as.Date("1995-01-01")`
* `qmin=8; qvote=54`
	
## EU15 

* `start =as.Date("1995-01-02"); end = as.Date("2004-05-01"))`
* `qmin=10; qvote=62`
	
## EU25 (Amsterdam Treaty)

* `start =as.Date("2004-05-02"); end = as.Date("2004-10-31")`
* `qmin=0; qvote=88; qpop=0`

## EU25 (Nice Treaty)

*  `start =as.Date("2004-11-01"); end = as.Date("2006-12-31") `
*  `qmin=13; qvote=232; qpop=2793 `


# MAKE DATA 

```
name  <- c("eu9", 		 "eu10", 	  "eu12", "eu15", "eu25a", "eu25b")
start <- c("1973-01-01", "1981-01-02", "1986-01-02", "1995-01-02", "2004-05-02", "2006-12-31")
end 	<- c("1981-01-01", "1986-01-01", "1995-01-01", "2004-05-01", "2004-10-31", NA)
qmin  <- c(6,  6,  8,  10, 1 , 13)
qvote <- c(41, 45, 54, 62, 88, 232)
qpop  <- c(NA, NA, NA, NA, NA, 2793)

thresholds <- data.frame(start=start, end=end, name=name, qmin=qmin, qvote=qvote,qpop=qpop)
```
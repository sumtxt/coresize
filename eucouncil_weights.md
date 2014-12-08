Data: EU COUNIL VOTING REGIMES
==============================

The csv contains data on the voting weights for the EU members across different treaties EU9,EU12,EU15,EU25 (Amsterdam), EU25-8 (Nice) and the corresponding voting rules. Please, consult the first source for further information. The data can be used with the coresize.R function. 

# SOURCE:

* [The Council of the European Union. 2012.](http://europa.eu/legislation_summaries/institutional_affairs/treaties/nice_treaty/nice_treaty_council_en.htm)
* [Bräuninger. 2005. Indices of Power (IOP 2.0) Manual.](http://www.tbraeuninger.de/download/)

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

Notice, all dates are inclusive. 

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
	
## EU25 (transition period)

* Legal Basis: EC Treaty [(CELEX:12002E/TXT)](http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:12002E/TXT), Article 205 amended by Accession Treaty [(CELEX:12003T/TXT)](http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:12003T/TXT), Article 26 
* `start =as.Date("2004-05-02"); end = as.Date("2004-10-31")`
* `qmin=17; qvote=88; qpop=0`

## EU25

* Legal Basis: 
	- EC Treaty [(CELEX:12002E/TXT)](http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:12002E/TXT), Article 205 amended by Accession Treaty [(CELEX:12003T/TXT)](http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:12003T/TXT), Article 12
	- for population weights: Council's Rules of Procedure (2004/338/EC) [(CELEX:32004D0338)](http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32004D0338) as amended by Council Decision [(CELEX:32006D0034)](http://eur-lex.europa.eu/legal-content/EN/TXT/?qid=1418028936134&uri=CELEX:32006D0034) and [(CELEX:32004D0701)](http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32004D0701)
*  `start =as.Date("2004-11-01"); end = as.Date("2006-12-31") `
*  `qmin=13; qvote=232`
*  November 1, 2004 to December 31, 2005: `qpop=2843314`
*  for 2006: `qpop=2860209`

## EU27 

* Legal Basis: 
 	- EC Treaty (as above) amended by Accession Treaty [(12005S/TXT)](http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:12005S/TXT), Article 9 in the accompanying Act 
 	- for population weights: Council's Rules of Procedure (2006/683/EC) [(CELEX:32006D0683)](http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32006D0683) as amended by Council Decision [(CELEX:32007D0004)](http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32007D0004), [(CELEX:32007D0881)](http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32007D0881) and  [(CELEX:32008D0945)](http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32008D0945). Council's Rules of Procedure (2009/937/EU)  [(CELEX:32009D0937)](http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32009D0937) as amended by Council Decision [(CELEX:32010D0795)](http://eur-lex.europa.eu/legal-content/EN/TXT/?qid=1418033560723&uri=CELEX:32010D0795), [(CELEX:32011D0900)](http://eur-lex.europa.eu/legal-content/EN/TXT/?qid=1418033560723&uri=CELEX:32011D0900) and  [(CELEX:32013D0037)](http://eur-lex.europa.eu/legal-content/EN/TXT/?qid=1418033877370&uri=CELEX:32013D0037)
*  `start =as.Date("2007-01-01"); end = as.Date("2013-06-30") `
*  `qmin=14; qvote=255` 
*  for 2007 `qpop= 3055863`
*  for 2008 `qpop= 3069644`
*  for 2009 `qpop= 3084457`
*  for 2010 `qpop= 3097924`
*  for 2011 `qpop= 3106761`
*  for 2012 `qpop= 3115418`
*  for 2013 (until June 30) `qpop= 3122814`


## EU28 

* Legal Basis: 
 	- EC Treaty (as above) amended by the Accession Treaty [(12012J/TXT)](http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:12012J/TXT), Article 20 in the accompanying Act
 	- for population weights: Council's Rules of Procedure (2009/937/EU)  [(CELEX:32009D0937)](http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32009D0937) as amended by Council Decision [(CELEX:32013D0345)](http://eur-lex.europa.eu/legal-content/EN/TXT/?qid=1418033763223&uri=CELEX:32013D0345) and [(CELEX:32013D0746)](http://eur-lex.europa.eu/legal-content/EN/TXT/?qid=1418034475573&uri=CELEX:32013D0746)
*  `start =as.Date("2013-07-01"); end = as.Date("2014-10-31")`
*  `qmin=15; qvote=260` 
*  for 2013 (from July 1) `qpop= 3150083`
*  for 2014 `qpop= 3134550` 

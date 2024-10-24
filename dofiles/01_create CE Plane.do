* Generate CE Plane

* Load dataset
clear all
import delimited "data\results.csv"

* Relabelling
lab var incrementalcosts "Incremental Costs"
lab var incrementalqalys "Incremental QALYs"


* Scatter Plot
twoway  (scatter incrementalcosts incrementalqalys, mcolor(%70)) ///
		(function y=94000*x, range(0 0.005)), ///
	yscale(range(0 400)) xline(0, lpattern(solid)) yline(0, lpattern(solid)) ///
	ylab(0(100)400) xsize(4) ysize(4) ///
	legend(off) ///
	title("Cost-effectiveness Plane")
	name(ceplane, replace) 


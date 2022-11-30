* Retrieving the dataset to be used for testing
sysuse auto.dta

* Performing Codebook command for data examination
codebook

* Question 1 Performing One Sample T-test on price if average price is 7000USD
ttest price==7000

* Question 2 Performing Two independent sample t-test if difference between foreign and domestic car prices
ttest price, by(foreign)

* Question 3 Plotting scatter plot for price and weight
twoway (scatter price weight) (lfit price weight)

* Question 3 Performing correlation analysis on price and weight
pwcorr price weight, sig star(0.05)

* Question 4 Running the regression analysis 
reg price mpg rep78 weight length displacement

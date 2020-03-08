# Installation

The easy way to install the relevant R packages (plus some that are not relevant to the course) is to execute in R
```{r}
install.packages(c("rstanarm", "brms", "rstantools", "devtools"), dependencies = TRUE)
```
However, you also need to install a C++ toolchain (if you do not have one already) in order to compile Stan programs. Instructions for that vary by operating system but are available from

https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started

# Getting Help

If you encounter any issues before (or after) the course, please ask at

http://discourse.mc-stan.org/

and someone will be able to help you.

# Reading

Before the class, please read the first two chapters of the second edition of _Statistical Rethinking_ by Richard McElreath

http://xcelab.net/rmpubs/sr2/statisticalrethinking2_chapters1and2.pdf

The rest of the book is available to pre-order from

https://www.crcpress.com/Statistical-Rethinking-A-Bayesian-Course-with-Examples-in-R-and-STAN/McElreath/p/book/9780367139919

In addition, there is a great video on Bayes' Rule by Grant Sanderson

https://t.co/5GBieRzt4O?amp=1


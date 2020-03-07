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

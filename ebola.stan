#include quantile_functions.stan
data { /* these are known and passed as a named list from R */
  int<lower = 0> n;                          // number of observations
  int<lower = 0, upper = n> y;               // number of survivors
  real<lower = 0, upper = 1> m;              // prior median
  real<lower = 0> r;                         // prior IQR
}
transformed data { /* these are only evaluated once and can draw randomly  */
  vector[2] a_s = GLD_solver_bounded([0, 1], m, r); // asymmetry and steepness
} // this function ^^^ is defined in the quantile_functions.stan file
parameters { /* these are unknowns whose posterior distribution is sought */
  real<lower = 0, upper = 1> p;              // CDF of survival probability
}
transformed parameters { /* deterministic unknowns that get stored in RAM */
  real theta = GLD_icdf(p, m, r, a_s[1], a_s[2]); // survival probability
} // this function ^^^ is defined in the quantile_functions.stan file
model { /* log-kernel of Bayes' Rule that essentially returns "target" */
  target += binomial_lpmf(y | n, theta); // log-likelihood (a function of theta)
} // implicit: p ~ uniform(0, 1) <=> theta ~ GLD(m, r, a_s[1], a_s[2])
generated quantities { /* other unknowns that get stored but are not needed */
  int y_ = binomial_rng(n, theta);       // posterior predictive realization
}

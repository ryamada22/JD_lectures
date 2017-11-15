Random Variable 確率変数
------------------------

A random variable *X* is a variable whose value is stochastically determined.

### Examples

#### A dice.

The set of possible outcomes are {1, 2, 3, 4, 5, 6}.

The probability to observe *X* = 3 is 1/6.

The probability to observe *X* ∈ {2, 3, 4} is,

*P*(*X* ∈ {2, 3, 4}) = ∑<sub>*i* ∈ {2, 3, 4}</sub>*q*<sub>*i*</sub>,
 where *q*<sub>*i*</sub> = 1/6, *i* = {1, 2, 3, 4, 5, 6} is probability mass function of dice random variable.

#### Normally distributed random variable

The set of possible outcomes are **R** (real values).

The probability to observe *x*<sub>1</sub> ≤ *X* ≤ *x*<sub>2</sub> is,

$$
P(x\_1 \\le X \\le x\_2) = \\int\_{x\_1}^{x\_2}\\frac{1}{\\sqrt{2\\pi s^2}}e^{-\\frac{(x-\\mu)^2}{2s^2}} dx ,
$$
 where $\\frac{1}{\\sqrt{2\\pi s^2}}e^{-\\frac{(x-\\mu)^2}{2s^2}}$ is probability density function of normal distribution.

### Further readings

#### Mathematics

See <https://en.wikipedia.org/wiki/Random_variable> and <https://en.wikipedia.org/wiki/Probability_space> .

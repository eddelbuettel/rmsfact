## rmsfact: Amazing Random Facts About the World's Greatest Hacker 

[![CI](https://github.com/eddelbuettel/rmsfact/workflows/ci/badge.svg)](https://github.com/eddelbuettel/rmsfact/actions?query=workflow%3Aci)
[![License](http://img.shields.io/badge/license-GPL--3-brightgreen.svg?style=flat)](https://www.r-project.org/Licenses/GPL-3)
[![CRAN](https://www.r-pkg.org/badges/version/rmsfact)](https://cran.r-project.org/package=rmsfact) 
[![Dependencies](https://tinyverse.netlify.app/badge/rmsfact)](https://cran.r-project.org/package=rmsfact)
[![r-universe](https://eddelbuettel.r-universe.dev/badges/rmsfact)](https://eddelbuettel.r-universe.dev/rmsfact)
[![Downloads](https://cranlogs.r-pkg.org/badges/rmsfact?color=brightgreen)](https://www.r-pkg.org/pkg/rmsfact)
[![Last Commit](https://img.shields.io/github/last-commit/eddelbuettel/rmsfact)](https://github.com/eddelbuettel/rmsfact)

### Motivation

The excellent [GNU Octave](https://en.wikipedia.org/wiki/GNU_Octave) contains a function `fact`.  It
is contributed by Jordi Gutiérrez Hermoso, and draws on the (now defunct) site stallmanfacts.com
(accessible via [archive.org](http://www.archive.org)) for a collection of random 'facts' about
[Richard M. Stallman](https://stallman.org/).  Each call of `fact` displays another (randomly
chosen) fact.

R was lacking such a key piece of technology, and hence this package was created to fill a glaring
void.

### Example

```{r}
> library(rmsfact)                  # load the package
> set.seed(123)                     # so that this is predictable
> rmsfact()
Richard Stallman can see Russia from his house.
> rmsfact("power")
Richard Stallman wrote a program so powerful it knows the question to 42. 
Richard Stallman can violate the GPL. In a vulgar display of power, he once did 
so with the Emacs source code, but he undid the violation before most people 
noticed. 
>
    
```

### Package Status

Complete and functional, no dependencies, passes tests.

### Installation

The package is [on CRAN](https://cran.r-project.org/package=rmsfact) and can
be installed via a standard

```{r}
R> install.packages("rmsfact")
```

### See Also

The [gaussfacts](https://github.com/eddelbuettel/gaussfacts) (also on CRAN) and
[myman](https://github.com/eddelbuettel/myman) packages also delivers a delightful set to draw from
just like this package does.

### Author

Dirk Eddelbuettel

### License

GPL-3

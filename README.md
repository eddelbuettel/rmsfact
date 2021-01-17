## rmsfact: Amazing Random Facts About the World's Greatest Hacker 

[![Build Status](https://travis-ci.org/eddelbuettel/rmsfact.svg)](https://travis-ci.org/eddelbuettel/rmsfact) 
[![CI](https://github.com/eddelbuettel/rmsfact/workflows/ci/badge.svg)](https://github.com/eddelbuettel/rmsfact/actions?query=workflow%3Aci)
[![License](http://img.shields.io/badge/license-GPL--3-brightgreen.svg?style=flat)](http://www.gnu.org/licenses/gpl-3.0.html) 
[![CRAN](http://www.r-pkg.org/badges/version/rmsfact)](http://cran.r-project.org/package=rmsfact) 
[![Dependencies](https://tinyverse.netlify.com/badge/rmsfact)](https://cran.r-project.org/package=rmsfact)
[![Downloads](http://cranlogs.r-pkg.org/badges/rmsfact?color=brightgreen)](http://www.r-pkg.org/pkg/rmsfact)
[![Last Commit](https://img.shields.io/github/last-commit/eddelbuettel/rmsfact)](https://github.com/eddelbuettel/rmsfact)

### Motivation

The excellent [GNU Octave](http://www.octave.org) contains a function `fact`.  It is
contributed by Jordi Gutiérrez Hermoso, and draws on the (now defunct) site
stallmanfacts.com (accessible via [archive.org](http://www.archive.org)) for a collection
of random 'facts' about [Richard M. Stallman](https://stallman.org/).  Each call of `fact`
displays another (randomly chosen) fact.

R was lacking such a key piece of technology, and hence this package was created to fill a
glaring void.

### Example

```{r}
R> library(rmsfact)                  # load the package
R> set.seed(123)                     # so that this is predictable
R> rmsfact()
Richard Stallman can see Russia from his house.
R>
```

### Package Status

Complete and functional, no dependencies, passes tests.

### Installation

The package is [on CRAN](http://cran.r-project.org/package=rmsfact) and can
be installed via a standard

```{r}
R> install.packages("rmsfact")
```

### Author

Dirk Eddelbuettel

### License

GPL-3

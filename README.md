# Fortran Program with GNU Autotools Simple Compiling Test

* automated fortran programs with GNU Autotools building test

* example usage:

```yaml
# This workflow will install Fortran and GNU Autotools dependencies, and do compile test

name: Fortran Program with GNU Autotools Simple Compiling Test

on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        content: ["","--host=x86_64-w64-mingw32","--host=i686-w64-mingw32"]
    steps:
    - uses: actions/checkout@v2
    - name: gfortran-autotool compiling test
      uses: holishing/gfortran_autotool_action@2020.308.0
      with:
        matrix:
        args:  ${{ matrix.content }}
```

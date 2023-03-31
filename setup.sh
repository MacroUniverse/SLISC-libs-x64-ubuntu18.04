# use `source setvars.sh` in here to setup

echo ":: initializing SLISC0-libs-x64-ubuntu18.04"

# recover split files due to github filesize limitation
FILES="flint2-2.9.0/lib/libflint.a mkl64-2022.1.0/lib/libmkl_core.a"
for FILE in $FILES
do
if [[ ! -f "$FILE" ]]; then
    cat ${FILE}-split-* > $FILE
fi
done

ADD="source lib_prepend.sh $PWD"

$ADD/arb-2.23.0
$ADD/arpack-ng64-shared-3.8.0
$ADD/arpack-ng64-static-3.8.0
$ADD/arpack-ng-shared-3.8.0
$ADD/arpack-ng-static-3.8.0
$ADD/arpackpp-2.3.0
$ADD/boost-1.80.0
$ADD/eigen-3.4.0
$ADD/flint2-2.9.0
$ADD/gmp-6.1.2
$ADD/gsl-2.7.1
$ADD/lapack64-shared-3.10.1
$ADD/lapack64-static-3.10.1
$ADD/lapack-shared-3.10.1
$ADD/lapack-static-3.10.1
$ADD/mpfr-4.1.0
$ADD/mplapack-2.0.1
$ADD/sqlite-3.40.0
$ADD/sqlitecpp-3.2.1
$ADD/mkl64-2022.1.0

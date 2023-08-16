gf --run < test/morpho.gfs | diff -u - test/morpho.gold

echo "If this is the only line you see, the test was successful!"
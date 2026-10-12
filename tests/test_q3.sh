#!/bin/bash
set -e
make q3
valgrind --leak-check=full --error-exitcode=1 ./q3 > output_q3.txt
grep -q "Value: 10" output_q3.txt
echo "Q3 Passed!"

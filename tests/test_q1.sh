#!/bin/bash
set -e
make q1
INPUT="3\n10\n20\n30\n2\n40\n50\n"
echo -e "$INPUT" | valgrind --leak-check=full --error-exitcode=1 ./q1 > output_q1.txt
grep -q "10" output_q1.txt && grep -q "50" output_q1.txt
echo "Q1 Passed!"

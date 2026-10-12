#!/bin/bash
set -e
make q2
INPUT="2\n101\nAlice\n3.8\n102\nBob\n3.9\n"
echo -e "$INPUT" | valgrind --leak-check=full --error-exitcode=1 ./q2 > output_q2.txt
grep -q "Bob" output_q2.txt && grep -q "3.9" output_q2.txt
echo "Q2 Passed!"

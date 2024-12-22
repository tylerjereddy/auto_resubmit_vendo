#!/bin/bash

# substitute gmx_bench_adjusted.sh for your own
# batch/submit script and adjust number of repeat
# submission from 10 to whatever you need
for i in $(seq 1 10); do
    echo "Submit batch job for iteration number: $i"
    sbatch -W gmx_bench_adjusted.sh
    # give the previous run 2 minutes to finish IO
    sleep 120
done

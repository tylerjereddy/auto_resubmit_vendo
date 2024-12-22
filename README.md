Automatic Resubmit Script for Venado
====================================

1. Start a [screen session](https://linuxize.com/post/how-to-use-linux-screen/)
on a Venado frontend node.
2. Copy in the `resubmit.sh` file from this repo and
replace `gmx_bench_adjusted.sh` with the name of your
submit script, and adjust the for loop to match the
number of times you want to resubmit the job after
it finishes (default is 10 times).
3. Run `./resubmit.sh` in the Venado screen session
and it should resubmit your job `N` times.

Of course, you should also ensure that you provide
sufficient time between the end of a simulation
and its assigned wallclock time so that there is
enough of a buffer to write the final files, including
the checkpoint file.

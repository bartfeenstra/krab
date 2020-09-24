#!/bin/awk

{
    real_time += $1;
    user_time += $2;
    sys_time += $3;
    iterations++;
}

END {
    printf "Average run times across %s iteration(s):\n", iterations;
    printf "Real:	%.3f second(s)\n", real_time/iterations;
    printf "User:	%.3f second(s)\n", user_time/iterations;
    printf "Sys:	%.3f second(s)\n", sys_time/iterations;
}

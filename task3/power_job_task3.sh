#!/bin/bash

block_dims=(16 32 64)

for block_dim in "${block_dims[@]}"
do
  JOB_NAME="bdim_${block_dim}"

  sbatch --job-name=$JOB_NAME ./task3/run_task3.sh $block_dim
done

#!/bin/bash
#SBATCH --output=%j_output.txt
#SBATCH --error=%j_error.txt
#SBATCH --time=00:05:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --partition=defq
#SBATCH --constraint="gpunode,TitanX"
#SBATCH --gres=gpu:1

BLOCK_DIM=$1

./task3/task3 $BLOCK_DIM
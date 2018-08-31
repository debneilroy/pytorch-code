#!/bin/bash
#SBATCH -J mnist_dist
#SBATCH -p debug
#SBATCH -t 00:30:00
#SBATCH -N 2
##SBATCH --ntasks-per-node=16
#SBATCH -n 4
#SBATCH --gres=gpu:4
#SBATCH -C tesla
#SBATCH --qos normal
#SBATCH -o hostname_%j.out
#SBATCH -e hostname_%j.err


module load openmpi/3.1.1-gnu
module load anaconda3/4.2.0
module load cuda/9.0

source activate pytorch_mpi
export PYTHONPATH=/sdcc/u/droy/.conda/envs/pytorch_mpi/lib/python3.5/site-packages/

export PATH=/hpcgpfs01/software/openmpi/3.1.1-gnu/bin/:$PATH
export LD_LIBRARY_PATH=/hpcgpfs01/software/openmpi/3.1.1-gnu/lib/:$LD_LIBRARY_PATH

mpirun -np 2 python mnist_dist.py > mnist_dist.txt

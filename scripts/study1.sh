#!/bin/bash
#SBATCH --job-name=study1
#SBATCH --time=02:00:00
#SBATCH --account=def-fabricel
#SBATCH --ntasks=50
#SBATCH --mem-per-cpu=1500M
#SBATCH --mail-user=fournier.patrick@uqam.ca
#SBATCH --mail-type=ALL

module load StdEnv openmpi julia/1.9.1

srun julia --project=../. ../src/study1.jl

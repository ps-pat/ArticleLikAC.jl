#!/bin/bash
#SBATCH --job-name=study1
#SBATCH --time=05:00:00
#SBATCH --account=def-fabricel
#SBATCH --ntasks=25
#SBATCH --mem-per-cpu=2500M
#SBATCH --mail-user=fournier.patrick@uqam.ca
#SBATCH --mail-type=ALL

module load StdEnv/2023 openmpi julia/1.9.3

srun julia --project=../. ../src/study1.jl

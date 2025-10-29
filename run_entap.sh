#!/bin/bash
#SBATCH --job-name=entap
#SBATCH --partition=batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=50gb
#SBATCH --time=72:00:00
#SBATCH --mail-type=END,FAIL
#SBATCH --output=/scratch/eab77806/logs/%x_%j.out
#SBATCH --error=/scratch/eab77806/logs/%x_%j.err

ml EnTAP/2.2.0-GCCcore-11.3.0

EnTAP --run -i {peptides.fa} -t $SLURM_CPUS_PER_TASK --entap-ini {path_to_config.ini} --run-ini {path_to_run.ini}

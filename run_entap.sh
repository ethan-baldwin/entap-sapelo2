#!/bin/bash
#SBATCH --job-name=entap
#SBATCH --partition=batch
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=50gb
#SBATCH --time=72:00:00

ml EnTAP/2.2.0-GCCcore-11.3.0

EnTAP --run -i path/to/your/peptides.fa -t $SLURM_CPUS_PER_TASK --out-dir path/to/your/outdir --entap-ini entap_config.ini --run-ini entap_run.ini 

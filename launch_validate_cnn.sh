#!/bin/sh
#sbatch --job-name=KQH_extract --gres=gpu:1 --mem=32768 --cpus-per-task=4 launch_validate_cnn.sh
#SBATCH --job-name=KQH_train
#SBATCH --gres=gpu:0
#SBATCH --mem=32768
#SBATCH --cpus-per-task=4

python3 validate_cnn.py
#!/bin/sh
#sbatch --job-name=KQH_lrcn --gres=gpu:1 --mem=32768 --cpus-per-task=4 launch_train_lrcn.sh
#SBATCH --job-name=KQH_lrcn
#SBATCH --gres=gpu:1
#SBATCH --mem=32768
#SBATCH --cpus-per-task=4

python3 train.py
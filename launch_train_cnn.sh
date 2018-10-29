#!/bin/sh

#SBATCH --job-name=KQH_train
#SBATCH --gres=gpu:0
#SBATCH --mem=32768
#SBATCH --cpus-per-task=4

python3 train_cnn.py
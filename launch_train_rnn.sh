#!/bin/sh
#sbatch --job-name=KQH_RNN --gres=gpu:1 --mem=32768 --cpus-per-task=4 launch_train_rnn.sh
#SBATCH --job-name=KQH_RNN
#SBATCH --gres=gpu:1
#SBATCH --mem=32768
#SBATCH --cpus-per-task=4

python3 train.py
#!/bin/sh
#sbatch --job-name=KQH_lrcn --gres=gpu:1 --mem=32768 --cpus-per-task=4 launch_train_lrcn.sh

python3 train.py
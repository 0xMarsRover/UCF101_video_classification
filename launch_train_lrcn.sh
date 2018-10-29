#!/bin/sh
#sbatch --job-name=KQH_lrcn --gres=gpu:1 --mem=32768 --cpus-per-task=4 --output=./output/output_train_lrcn.out launch_train_lrcn.sh

python3 train.py
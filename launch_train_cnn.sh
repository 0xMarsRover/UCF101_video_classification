#!/bin/sh
#sbatch --job-name=KQH_cnn --gres=gpu:1 --mem=32768 --cpus-per-task=4 launch_train_cnn.sh


python3 train_cnn.py
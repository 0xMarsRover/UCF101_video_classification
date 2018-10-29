#!/bin/sh
#sbatch --job-name=KQH_lstm --gres=gpu:1 --mem=32768 --cpus-per-task=4 --output=./output/output_train_lstm.out launch_train_lstm.sh


python3 train.py

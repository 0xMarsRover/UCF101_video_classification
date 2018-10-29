#!/bin/sh
#sbatch --job-name=KQH_RNN --gres=gpu:1 --mem=32768 --cpus-per-task=4 launch_train_rnn.sh


python3 train.py
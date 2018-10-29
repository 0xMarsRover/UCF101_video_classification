#!/bin/sh
#sbatch --job-name=KQH_val_cnn_testset --gres=gpu:1 --mem=32768 --cpus-per-task=4 launch_validate_cnn_testset.sh


python3 validate_cnn_testset.py
#!/bin/sh

#sbatch --job-name=KQH_c3d --gres=gpu:1 --mem=65536 --cpus-per-task=4 --output=./output/output_train_c3d.out launch_train_c3d.sh


python3 train.py
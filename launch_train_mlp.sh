#!/usr/bin/env bash

#sbatch --job-name=KQH_mlp --gres=gpu:1 --mem=65536 --cpus-per-task=4 --output=./output/output_train_mlp.out launch_train_mlp.sh


python3 train.py
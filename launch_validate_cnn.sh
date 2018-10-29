#!/bin/sh
#sbatch --job-name=KQH_val_cnn_fewimages --gres=gpu:1 --mem=32768 --cpus-per-task=4 launch_validate_cnn.sh

python3 validate_cnn.py
#!/bin/sh
#sbatch --job-name=KQH_extFeat --gres=gpu:1 --mem=32768 --cpus-per-task=4 launch_extractfeatures.sh

python3 extract_features.py
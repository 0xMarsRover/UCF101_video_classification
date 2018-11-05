#!/bin/sh
#sbatch --job-name=KQ_val_rnn --gres=gpu:0 --mem=32768 --cpus-per-task=4 launch_validate_rnn.sh

python3 validate_rnn.py -m conv_3d

python3 validate_rnn.py -m c3d

python3 validate_rnn.py -m lrcn

python3 validate_rnn.py -m mlp

python3 validate_rnn.py -m lstm

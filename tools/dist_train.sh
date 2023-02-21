#!/usr/bin/env bash
CONFIG="./configs/softgroup++/softgroup++_scannet.yaml"
GPUS=1
PORT=${PORT:-29500}

# OMP_NUM_THREADS=1 torchrun --nproc_per_node=$GPUS --master_port=$PORT $(dirname "$0")/train.py --dist $CONFIG ${@:3}
OMP_NUM_THREADS=1 python -m torch.distributed.run --nproc_per_node=$GPUS --master_port=$PORT $(dirname "$0")/train.py --dist True --config $CONFIG ${@:3}
# 2>&1 | tee -a trainlogs.txt

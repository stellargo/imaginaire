#!/bin/bash

while true
do
    # pkill -f "dancing";
    CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 python -m torch.distributed.launch --nproc_per_node=8 train.py --config configs/projects/vid2vid/dancing/ampO1.yaml --logdir=/local/vondrick/ss6712/datasets/daily_talk_show/style_transfer_logs/obama
done

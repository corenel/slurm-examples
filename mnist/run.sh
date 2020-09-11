#!/usr/bin/env bash
# 查看显卡信息
nvidia-smi
# 查看当前工作目录
pwd
# 进入Conda环境
source ~/miniconda3/bin/activate py37
# 运行程序
tensorboard --logdir ./runs --host=0.0.0.0 &
python3 main.py

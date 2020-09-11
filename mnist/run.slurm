#!/usr/bin/env bash

#SBATCH -J mnist             # 作业名为mnist
#SBATCH -p gpu-2             # 提交到gpu-2分区
#SBATCH -N 1                 # 使用1个节点
#SBATCH --cpus-per-task=8    # 每个进程占用8个cpu核心，申请的内存与cpu核心数成正比
#SBATCH --gres=gpu:1         # 申请1块GPU卡
#SBATCH -t 1-00:00:00        # 最长运行时间为1天
#SBATCH -o mnist.out         # 将屏幕的输出结果保存到当前工作目录下
#SBATCH --chdir /home/yuthon/Workspace/slurm-examples/mnist # 指定工作目录

# 查看显卡信息
srun nvidia-smi
# 查看当前工作目录
pwd
# 进入Conda环境
source ~/miniconda3/bin/activate py37
# 运行程序
tensorboard --logdir runs &
srun python3 main.py

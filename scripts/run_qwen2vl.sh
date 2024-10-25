#!/bin/bash
export NCCL_SHM_DISABLE=1
export NCCL_P2P_DISABLE=1
export HF_DATASETS_OFFLINE=1 TRANSFORMERS_OFFLINE=1
export WANDB_DISABLED=true
export NCCL_IB_TIMEOUT=22

export PYTHONPATH=/home/madehua/code/LLaMA-Factory
cd /home/madehua/code/LLaMA-Factory

export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 

llamafactory-cli train examples/train_full/qwen2vl_full_sft.yaml
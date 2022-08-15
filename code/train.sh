#!/bin/bash

name=(1 2 3 4 5)

for ((i=0; i<5; i++))
do

    python train.py \
                --dataFile "../data/HuffPost/0${name[i]}" \
                --fileVocab "../pre-trained-model/bert_base_uncased/vocab.txt" \
                --fileModelConfig "../pre-trained-model/bert_base_uncased/config.json" \
                --fileModel "../pre-trained-model/bert_base_uncased/pytorch_model.bin" \
                --fileModelSave "../model/huffpost_n5k1_r${name[i]}" \
                --numDevice 1 \
                --learning_rate 1e-5 \
                --epochs 10 \
                --numNWay 5 \
                --numKShot 1 \
                --numQShot 25 \
                --episodeTrain 100 \
                --episodeTest 1000 \
                --numFreeze 6 \
                --warmup_steps 100 \
                --dropout_rate 0.1 \
                --weight_decay 0.2 \
                --k 10 \
                --sample 20
done         


#!/bin/bash
#SBATCH --partition=A100devel
#SBATCH --gpus=1
#SBATCH --ntasks=1
#SBATCH -o "/home/s28zabed/punctuation-restoration/output_inference.out"

python src/inference.py --pretrained-model=roberta-large --weight-path=out/weights.pt --language=en --in-file=data/test_en.txt --out-file=data/test_en_out.txt
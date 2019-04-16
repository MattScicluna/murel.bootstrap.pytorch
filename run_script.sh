#!/bin/bash
#SBATCH --qos=unkillable
#SBATCH --gres=gpu:p100-16gb:1
#SBATCH --mem=32G
#SBATCH --time=48:00:00

echo Running on $HOSTNAME
source $HOME/.bashrc

source $HOME/miniconda3/etc/profile.d/conda.sh
conda deactivate
conda activate murel

export PYTHONUNBUFFERED=1

bash murel/datasets/scripts/download_vqa2.sh
yes | python -m bootstrap.run -o murel/options/vqa2/murel.yaml

conda deactivate
echo 'here?'
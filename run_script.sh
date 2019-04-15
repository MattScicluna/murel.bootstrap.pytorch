#!/usr/bin/env bash

#conda activate murel
python murel/datasets/scripts/download_vqa2.sh
python -m bootstrap.run -o murel/options/vqa2/murel.yaml

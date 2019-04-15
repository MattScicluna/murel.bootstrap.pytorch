#!/usr/bin/env bash

sbatch --gres=gpu:1 -c 2 --nodelist=eog17 run_script.sh
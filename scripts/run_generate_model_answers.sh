#!/bin/bash

# Load environment variables from .env file
export $(grep -v '^#' .env | xargs)

# Change directory to src
cd src

# Login wandb using the token from the .env file
wandb login $WANDB_TOKEN

# Run the Python script with the specified model
python generate_model_answers.py --model mistralai/Mistral-7B-Instruct-v0.2 --dataset math
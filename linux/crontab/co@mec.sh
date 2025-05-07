#!/bin/bash

#SD
/usr/bin/sleep 16 && /usr/bin/curl -X 'POST' \
  'http://127.0.0.1:7860/sdapi/v1/unload-checkpoint' \
  -H 'accept: application/json' \
  -d '' &
$HOME/miniconda3/bin/conda run -n sd bash $HOME/sd/stable-diffusion-webui-forge/webui.sh &


#llm
$HOME/miniconda3/bin/conda run -n mkl $HOME/llama.cpp/build/2025.1.23/mkl/bin/llama-server -m /opt/share/co/ggufs/DeepSeek-R1-Distill-Qwen-14B-abliterated-v2.Q4_K_M.gguf --port 8888 --host 0.0.0.0 & #-ngl 20 &


#CS
SHELL=/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Source the user's shell configuration files
if [ -f "$HOME/.profile" ]; then
    source "$HOME/.profile"
fi

if [ -f "$HOME/.bashrc" ]; then
    source "$HOME/.bashrc"
fi
# Add a delay to ensure network and other services are up
sleep 30

$HOME/miniconda3/bin/conda run -n code code-server


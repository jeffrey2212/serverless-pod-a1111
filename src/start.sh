#!/bin/bash

echo "Worker Initiated"

echo "Starting WebUI API"
python /workspace/sd/stable-diffusion-webui/webui.py --disable-nan-check --skip-python-version-check --skip-torch-cuda-test --skip-install --opt-sdp-attention --disable-safe-unpickle --port 3000 --api --nowebui --skip-version-check  --no-hashing --no-download-sd-model &

echo "Starting RunPod Handler"
python -u /handler.py

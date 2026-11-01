#!/bin/bash
echo "=== Radxa Dragon Q6A Gemma 4 NPU Environment Check ==="

RUNTIME_DIR="/home/radxa/q6a-gemma4-npu/runtime"
PACKAGES_DIR="/home/radxa/q6a-gemma4-npu/packages"

if [ -f "$RUNTIME_DIR/litert_lm_main_q6a_gemma4_npu" ]; then
    echo "[OK] NPU runtime binary found."
else
    echo "[!] WAARSCHUWING: NPU runtime binary mist in $RUNTIME_DIR"
fi

if [ -f "$PACKAGES_DIR/gemma4_e2b_q6a_qcs6490_ctx1024_npu.litertlm" ]; then
    echo "[OK] Model (.litertlm) found."
else
    echo "[!] WAARSCHUWING: Model bestand mist in $PACKAGES_DIR"
fi

echo "Klaar met controleren!"

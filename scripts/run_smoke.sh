#!/bin/bash
echo "=== Radxa Dragon Q6A Gemma 4 NPU Performance Test ==="

RUNTIME_DIR="$(cd "$(dirname "$0")/../runtime" && pwd)"
RUNTIME="${RUNTIME_DIR}/litert_lm_main_q6a_gemma4_npu"
MODEL="./packages/gemma4_e2b_q6a_qcs6490_ctx1024_npu.litertlm"

if [ ! -f "$RUNTIME" ] || [ ! -f "$MODEL" ]; then
    echo "[!] FOUT: Runtime of model ontbreekt in local directory."
    exit 1
fi

echo "[*] Exporteren van QNN/NPU paden..."
export LD_LIBRARY_PATH="${RUNTIME_DIR}:${LD_LIBRARY_PATH}"
export ADSP_LIBRARY_PATH="${RUNTIME_DIR};/usr/lib/dsp/cdsp;/usr/lib/dsp"

echo "[*] Starten van NPU-inferentie..."
$RUNTIME \
  --backend=npu \
  --litert_dispatch_lib_dir="${RUNTIME_DIR}" \
  --model_path="$MODEL" \
  --input_prompt="Hello Gemma, explain what an NPU is in one sentence." \
  --max_output_tokens=64 \
  --use_lazy_warmup_for_npu=false \
  --max_num_tokens=1024

echo ""
echo "[*] Performance test voltooid!"

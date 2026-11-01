# Radxa Dragon Q6A - Gemma 4 Direct NPU Deployment

This repository contains the configuration, runtime orchestration scripts, and validation utilities for running **Gemma 4** directly on the **Qualcomm Hexagon NPU** via LiteRT on the Radxa Dragon Q6A (QCS6490).

## 📊 Overview

- **Hardware**: Radxa Dragon Q6A (Qualcomm QCS6490)
- **Target Subsystem**: Qualcomm Hexagon NPU (Direct Execution)
- **Model**: Gemma 4 (LiteRT `.litertlm` format)
- **Runtime**: LiteRT LM Main with Qualcomm QNN integration

---

## 📁 Repository Structure

```text
.
├── .gitignore          # Excludes proprietary binaries & heavy model files
├── README.md           # Project documentation
└── scripts/            # Environment checks & helper scripts
    └── check_q6a.sh    # NPU runtime & model presence validator

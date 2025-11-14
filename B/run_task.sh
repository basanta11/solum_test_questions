#!/usr/bin/env bash
set -e

# Always run from the script's directory
cd "$(dirname "$0")"

echo "=============================="
echo " Task B - CargoCraft Fleet"
echo "=============================="

# 1. Run main.py with sample_input.txt
if [ -f "sample_input.txt" ]; then
  echo "[B] Running on sample_input.txt..."
  python main.py < sample_input.txt
else
  echo "[B] sample_input.txt not found, skipping sample run."
fi

echo

# 2. Generate random test_case.txt
if [ -f "test_case.py" ]; then
  echo "[B] Generating random test_case.txt..."
  python test_case.py
else
  echo "[B] test_case.py not found, skipping test generation."
fi

echo

# 3. Run main.py on generated test_case.txt and save output
if [ -f "test_case.txt" ]; then
  echo "[B] Running on test_case.txt -> output_taskB.txt"
  python main.py < test_case.txt > output_taskB.txt
  echo "[B] Done. Output saved to output_taskB.txt"
else
  echo "[B] test_case.txt not found, skipping test run."
fi

read -p "Press Enter to continue..."

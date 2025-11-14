#!/usr/bin/env bash
set -e

# Always run from the script's directory
cd "$(dirname "$0")"

echo "=============================="
echo " Task A - Mystic Waves"
echo "=============================="

# 1. Run main.py with sample_input.txt
if [ -f "sample_input.txt" ]; then
  echo "[A] Running on sample_input.txt..."
  python main.py < sample_input.txt
else
  echo "[A] sample_input.txt not found, skipping sample run."
fi

echo

# 2. Generate random test_case.txt
if [ -f "test_case.py" ]; then
  echo "[A] Generating random test_case.txt..."
  python test_case.py
else
  echo "[A] test_case.py not found, skipping test generation."
fi

echo

# 3. Run main.py on generated test_case.txt and save output
if [ -f "test_case.txt" ]; then
  echo "[A] Running on test_case.txt -> output_taskA.txt"
  python main.py < test_case.txt > output_taskA.txt
  echo "[A] Done. Output saved to output_taskA.txt"
else
  echo "[A] test_case.txt not found, skipping test run."
fi

read -p "Press Enter to continue..."



# Task B – CargoCraft Fleet

## What this program does

The program reads multiple test cases. Each test case contains a single integer `n` — the total propulsion units available.

A fleet may use two craft types:

- Type A craft → 4 propulsion units
- Type B craft → 6 propulsion units

For each `n`, the program prints one of the following:

- The **minimum** number of crafts possible
- The **maximum** number of crafts possible
- `-1` if `n` cannot be formed using any combination of 4s and 6s

Valid combinations exist for all even `n ≥ 4`, except `n = 2`.

---

---

## How to run Task B

### 1) Run with manual input
Use this if you want to type values yourself:

```bash
python main.py
```

### 2) Run with sample input
Use this to test with predefined cases:

```bash
python main.py < sample_input.txt
```

### 3) Run using generated test cases

```bash
python generate_tests.py
python main.py < test_case.txt > output_taskB.txt
```

### 4) Run everything using the shell script
This will run sample tests, generate random tests, and execute the program:

```bash
./run_taskB.sh
```

(If needed, make it executable first: `chmod +x run_task.sh`)





## Files included

| File | Purpose |
|------|---------|
| `main.py` | Main solution. Reads `n` and prints min/max crafts or `-1`. |
| `sample_input.txt` | Example inputs used to quickly test the program. |
| `generate_tests.py` | Creates a random `test_case.txt` file with large numbers (up to 10^18). |
| `test_case.txt` | Auto-generated random test file (created by `generate_tests.py`). |
| `output_taskB.txt` | Output produced when running on random test cases (optional). |
| `run_taskB.sh` | Shell script that runs sample input, generates tests, and executes everything automatically. |


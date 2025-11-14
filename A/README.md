# Task A  Mystic Waves

## What this program does

This program processes multiple test cases. Each test case contains two integers: `x` and `n`.

It generates an alternating sequence of length `n`:

```
x, -x, x, -x, x, ...
```

The program outputs the total sum of that sequence for each test case.

---

---

## How to run Task A

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
python main.py < test_case.txt > output_taskA.txt
```

### 4) Run everything using the shell script
This will run sample tests, generate random tests, and execute the program:

```bash
./run_task.sh
```

(If needed, make it executable first: `chmod +x run_taskA.sh`)



## Files included

| File | Purpose |
|------|---------|
| `main.py` | Main solution. Reads input and prints the correct output for each test case. |
| `sample_input.txt` | Example test cases you can run immediately. |
| `generate_tests.py` | Creates a random `test_case.txt` file with valid inputs (x, n between 1–10). |
| `test_case.txt` | Auto-generated random test file (created by `generate_tests.py`). |
| `output_taskA.txt` | Output generated from the random test file (optional). |
| `run_task.sh` | Shell script that runs sample input, generates random tests, and executes the program automatically. |


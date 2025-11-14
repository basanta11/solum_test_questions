# Web Developer Technical Test — Tasks A, B, C

This repository contains solutions for the Web Developer Technical Test. The test is split into three independent tasks; each task lives in its own folder and can be run independently.

Tasks:

- **Task A — Mystic Waves** (`A/`) — Python
- **Task B — CargoCraft Fleet** (`B/`) — Python
- **Task C — Frontend Login Page** (`C/`) — Vue

---

## Folder overview

### A — Mystic Waves (Python)

Implements the sequence problem described in the test PDF.

- Input: `t` test cases, each with `x` and `n`
- Output: total energy after `n` alternating waves `x, -x, x, -x, ...`

See `A/README.md` for a problem summary, algorithm explanation, and run instructions (manual/sample/random tests).

---

### B — CargoCraft Fleet (Python)

Implements the propulsion-units problem.

- Input: `t` test cases, each with `n` (total propulsion units)
- Output: minimum and maximum possible crafts, or `-1` if impossible

See `B/README.md` for the problem summary, core number-theory insight, and instructions for sample and stress tests.

---

### C — Frontend Login Page (Vue)

Frontend-only login page with:

- Email and password fields
- Validation rules from the PDF (email existence, password strength)
- Hardcoded demo credentials
- Login success screen with welcome message and logout

See `C/README.md` for setup and run instructions and validation notes.

---

## Quick start

Run each task from the repository root.

Task A (sample input):

```bash
cd A
python main.py < sample_input.txt
```

Task B (sample input):

```bash
cd B
python main.py < sample_input.txt
```

### Running Python tasks via the provided shell scripts

Each task includes a shell script that runs the solution with sample inputs and optional generated tests.

Run Task A script:

```bash
cd A
./run_task.sh
```

Run Task B script:

```bash
cd B
./run_task.sh
```

---

### Optional note

Make sure the scripts are executable if you run them on a Unix-like system:

```bash
chmod +x run_task.sh
```

---

## Task C — start frontend (Vue)

```bash
cd C
npm install
npm run dev
```
 

# CargoCraft Fleet solver

import sys


def solve():
#   Print min/max craft counts (or -1) for each propulsion total
    data = sys.stdin.read().strip().split()
    if not data:
        return

    t = int(data[0])
    out = []
    i = 1
    for _ in range(t):
        n = int(data[i])
        i += 1

        # Feasible totals must be even and at least 4 (n = 2 cannot be formed).
        if n % 2 == 1 or n == 2:
            out.append("-1")
            continue

        # Max crafts: fill with 4-unit ships; Min crafts: favor 6-unit ships (ceil n/6).
        max_crafts = n // 4
        min_crafts = (n + 5) // 6
        out.append(f"{min_crafts} {max_crafts}")

    sys.stdout.write("\n".join(out))


if __name__ == "__main__":
    solve()

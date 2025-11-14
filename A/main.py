#  Waves solver


def solve():
    # Read test cases and print the resulting total energy.
    t = int(input())
    for _ in range(t):
        x, n = map(int, input().split())
        # Every (x, -x) pair cancels; only an odd n leaves an extra +x.
        print(0 if n % 2 == 0 else x)


if __name__ == "__main__":
    solve()

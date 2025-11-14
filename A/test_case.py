#to genegertae random test cases
import random

t = 100  # number of test cases (max allowed)

with open("test_case.txt", "w") as f:
    f.write(str(t) + "\n")
    for _ in range(t):
        x = random.randint(1, 10)
        n = random.randint(1, 10)
        f.write(f"{x} {n}\n")

print("test_case.txt created with 100 random test cases.")

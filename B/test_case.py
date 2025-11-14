#Function to generate test cases 
import random

t = 1000  # number of test cases
with open("test_case.txt", "w") as f:
    f.write(str(t) + "\n")
    for _ in range(t):
        # generate an 18-digit random number (1e17 to 1e18-1)
        n = random.randint(10**17, 10**18 - 1)
        f.write(str(n) + "\n")

print(" test_case.txt created with 1000 test cases.")

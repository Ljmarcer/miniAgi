# fibonacci.py

def fibonacci(n):
    if n <= 1:
        return n
    else:
        return (fibonacci(n-1) + fibonacci(n-2))

with open("output.txt", "w") as f:
    for i in range(20, 31):
        f.write(str(fibonacci(i)) + "\n")

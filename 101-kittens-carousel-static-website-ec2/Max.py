largest = float("-inf")

for i in range(5):
    user_input = int(input(f"Enter number {i + 1}: "))
    if user_input > largest:
        largest = user_input
print(f"The largest number is {largest}")





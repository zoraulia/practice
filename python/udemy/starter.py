import random

random_number = random.randint(1,10)  # numbers 1 - 10

# handle user guesses
#   if they guess correct, tell them they won
#     otherwise tell them if they are too high or too low

# BONUS - let player play again if they want!
guess = None
while guess!=random_number:
	guess = input("Guess a number between 1 and 10: ")
	guess = int(guess)
	if guess>random_number:
		print("Too high, try again!")
	elif guess<random_number:
		print("Too low, try again!")
	else:
		print("You won!")
print(random_number)
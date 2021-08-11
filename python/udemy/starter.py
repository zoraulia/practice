import random

random_number = random.randint(1,10)  # numbers 1 - 10

# handle user guesses
#   if they guess correct, tell them they won
#     otherwise tell them if they are too high or too low

# BONUS - let player play again if they want!
guess = input("Guess a number between 1 and 10: ")
guess = int(guess)
while random_number != guess:
	if random_number > guess:
		print("Too high, try again!")
	else:
		print("Too low, try again!")
	guess = int(input("Guess a number between 1 and 10: "))
else:
	print("You guessed it, you won!")
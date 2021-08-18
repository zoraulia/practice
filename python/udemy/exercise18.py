# #Yell function
# def yell(word):
#     return "{}!".format(word.upper())

# Define speak below:
def speak(animal='dog'):
    noises = {'pig':'oink', 'duck':'quack', 'cat':'meow', 'dog':'woof'}
    return noises.get(animal, '?')

print(speak("banana"))
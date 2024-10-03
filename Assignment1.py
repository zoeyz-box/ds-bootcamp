# Zhang, Zoey_Assignment 1
# NetID: zz2854

# Function that takes a word as an arg and returns the number of vowels in the word
def count_vowels(word):
    # Did not include y as a vowel
    vowels = ("a","e","i","o","u","A","E","I","O","U")
    num_vowels = 0
    for i in range(len(word)):
        if word[i] in vowels:
            num_vowels += 1
    return num_vowels

# Iterates through list and prints each one in all caps
animals = ['tiger', 'elephant', 'monkey', 'zebra', 'panther']
for i in range(len(animals)):
    print(animals[i].upper())

# Iterates from 1 to 20, printing each number and its parity
for i in range(1, 21):
    if (i % 2 == 0):
        print(str(i) + ", Even")
    else:
        print(str(i) + ", Odd")

# Function that takes two integers as input from user and returns their sum
def sum_of_integers(a, b):
    return a + b
# problem 8
'''
is_palindrome('testing') # False
is_palindrome('tacocat') # True
is_palindrome('hannah') # True
is_palindrome('robert') # False
is_palindrome('amanaplanacanalpanama') # True
'''

def is_palindrome(string):
    stripped = string.replace(" ", "")
    return stripped == stripped[::-1]


# problem 9
'''
frequency([1,2,3,4,4,4], 4) # 3
frequency([True, False, True, True], False) # 1
'''

def frequency(list, search_terms):
    return list.count(search_terms)


# problem 10
'''
multiply_even_numbers([2,3,4,5,6]) # 48
'''

def multiply_even_numbers(collection):
    result = 1
    for x in collection:
        if x%2==0:
            result = result * x
    return result


# problem 11
'''
capitalize("tim") # "Tim"
capitalize("matt") # "Matt"
'''

def capitalize(letter):
    return letter.capitalize()


# problem 12
'''
compact([0,1,2,"",[], False, {}, None, "All done"]) # [1,2, "All done"]
'''

def compact(l):
    return [val for val in l if val]


# problem 13
# flesh out intersection pleaseeeee
def intersection(collect1, collect2):
    collect1 = set(collect1)
    collect2 = set(collect2)
    a = collect1.intersection(collect2)
    return list(a)

# Sebastian's
def intersection(l1, l2):
    return [val for val in l1 if val in l2]


# problem 14
'''
def isEven(num):
    return num % 2 == 0

partition([1,2,3,4], isEven) # [[2,4],[1,3]]
'''

def partition(lst, fn):
    trues = []
    falses = []
    for val in lst:
        if fn(val):
            trues.append(val)
        else:
            falses.append(val)
    return [trues, falses]

# Jonathan's
def partition(l, callback):
    return [[l.pop(l.index(i)) for i in l if callback(i)],l]
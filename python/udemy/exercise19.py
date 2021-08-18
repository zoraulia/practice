# problem 1
# define product below
def product(a,b):
    return a*b


# problem 2
'''
return_day(1) # "Sunday"
return_day(2) # "Monday"
return_day(3) # "Tuesday"
return_day(4) # "Wednesday"
return_day(5) # "Thursday"
return_day(6) # "Friday"
return_day(7) # "Saturday"
return_day(41) # None
'''

def return_day(num):
    days = {1:"Sunday", 2:"Monday", 3:"Tuesday", 4:"Wednesday", 5:"Thursday", 6:"Friday", 7:"Saturday"}
    return days.get(num, None)
    pass

# Colt's version
def return_day(num):
    days = ["Sunday","Monday", "Tuesday","Wednesday","Thursday","Friday","Saturday"]
    # Check to see if num valid
    if num > 0 and num <= len(days):
        # use num - 1 because lists start at 0 
        return days[num-1]
    return None


# problem 3
'''
last_element([1,2,3]) # 3
last_element([]) # None
'''

def last_element(elem):
    if elem==[]:
        return None
    return elem[-1]


# problem 4
'''
number_compare(1,1) # "Numbers are equal"
number_compare(1,0) # "First is greater"
number_compare(2,4) # "Second is greater"
'''

def number_compare(num1,num2):
    if num1==num2:
        return "Numbers are equal"
    elif num1>num2:
        return "First is greater"
    return "Second is greater"


# problem 5
'''
single_letter_count("Hello World", "h") # 1
single_letter_count("Hello World", "z") # 0
single_letter_count("HelLo World", "l") # 3
'''

#define single_letter_count below:
def single_letter_count(words, num):
    words = words.lower()
    return words.count(num.lower())


# problem 6
'''
multiple_letter_count("awesome") # {'a': 1, 'e': 2, 'm': 1, 'o': 1, 's': 1, 'w': 1}
'''

# flesh out multiple_letter count:
def multiple_letter_count(letter):
    return {k:letter.count(k) for k in letter}


# problem 7
'''
list_manipulation([1,2,3], "remove", "end") # 3
list_manipulation([1,2,3], "remove", "beginning") #  1
list_manipulation([1,2,3], "add", "beginning", 20) #  [20,1,2,3]
list_manipulation([1,2,3], "add", "end", 30) #  [1,2,3,30]
'''

def list_manipulation(list, command, loc, val=0):
    if command=="remove" and loc=="end":
        e = list.pop()
        return e
    elif command=="remove" and loc=="beginning":
        b = list.pop(0)
        return b
    elif command=="add" and loc=="beginning":
        list.insert(0, val)
        return list
    elif command=="add" and loc=="end":
        list.append(val)
        return list

print(list_manipulation([1,2,3], "remove", "end")) # 3
print(list_manipulation([1,2,3], "remove", "beginning")) #  1
print(list_manipulation([1,2,3], "add", "beginning", 20)) #  [20,1,2,3]
print(list_manipulation([1,2,3], "add", "end", 30)) #  [1,2,3,30]
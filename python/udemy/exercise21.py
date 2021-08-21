def contains_purple(*letter):
    for l in letter:
        l = str(l)
        if l.lower()=="purple":
            return True
    return False

# # Colt's
# def contains_purple(*args):
#     if "purple" in args: return True
#     return False
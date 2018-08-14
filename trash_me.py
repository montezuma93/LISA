def omit_extension(with_extension):
    # take a string with an extension (a . followed by some chars) and return the same name without the extension
    sans_extension = ''
    index = 0
    all_done = False
    while not all_done:
        sans_extension = sans_extension + with_extension[index]
        index += 1
        if (with_extension[index] == '.') or (index == len(with_extension)): # you found the extension part
            all_done = True
    return sans_extension


file_name = 'crap.crappy'

short_name = omit_extension(file_name)

print file_name
print short_name

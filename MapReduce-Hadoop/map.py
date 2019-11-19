import sys
from random import random


count = 0
current_string = ''
for line in sys.stdin:
    string = list(line.replace('\n', '').split('\t'))[1]
    if count == 0:
        current_string = string
        count += 1
    elif count < 5:
        if random() >= 0.8:
            print(current_string)
            current_string = ''
            count = 0
        else:
            current_string += "," + string
            count += 1
    else:
        print(current_string)
        current_string = ''
        count = 0


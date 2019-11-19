import sys
import random

for line in sys.stdin:
    print(str(random.randint(0, 100)) + '\t' + line.replace('\n', ''))

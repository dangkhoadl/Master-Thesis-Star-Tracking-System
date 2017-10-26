#!/usr/bin/python3
import sys
sys.stdout = open('report.txt', 'w')


PROGRAM = ".//starTracking.exe"


def getArg(i,j):
    return "Inputs//IMG_" + str(i) + '_' + str(j) + ".bin"


import timeit
import subprocess
def getOutput(program, arg):
    results = []

    start = timeit.default_timer()
    proc = subprocess.Popen([program,arg],stdout=subprocess.PIPE)
    stop = timeit.default_timer()

    while True:
        line = proc.stdout.readline()
        if line != b'':
            line = str(line)
            line = line[line.index("\'") + 1:line.rindex("\\")]
            results.append(int(line))
        else:
            break
    return (results,stop-start)

import time
if __name__ == '__main__':
    res = []
    cnt = 0
    for i in range(1,71,1):
        for j in range(179):
            cnt += 1
            (results, runtime) = getOutput(PROGRAM,getArg(i,j))
            # time.sleep(1)
            res.append([results[0], runtime])

    for r in res:
        print(r[0], r[1])

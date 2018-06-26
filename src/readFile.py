#!/usr/bin/python3

def readFile(inFilename, outFilename):
    with open(inFilename) as inFile:
        line = inFile.readline()
        strings = line[:-1].split(',')
        strings.sort()
        with open(outFilename, 'w') as outFile:
            outFile.write(','.join(strings))

try:
    readFile('input.csv', 'output.csv')
except FileNotFoundError as e:
    print(e)

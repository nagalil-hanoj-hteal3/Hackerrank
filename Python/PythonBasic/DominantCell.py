#!/bin/python3

import math
import os
import random
import re
import sys

#TODO write code in numCells function
def numCells(grid):
    def is_dominant(i, j):
        value = grid[i][j]
        for x in range(max(0, i - 1), min(len(grid), i + 2)):
            for y in range(max(0, j - 1), min(len(grid[0]), j + 2)):
                if grid[x][y] >= value and (x, y) != (i, j):
                    return False
        return True

    count = 0
    for i in range(len(grid)):
        for j in range(len(grid[0])):
            if is_dominant(i, j):
                count += 1

    return count

#ignore main 
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    grid_rows = int(input().strip())
    grid_columns = int(input().strip())

    grid = []

    for _ in range(grid_rows):
        grid.append(list(map(int, input().rstrip().split())))

    result = numCells(grid)

    fptr.write(str(result) + '\n')

    fptr.close()

#!/usr/bin/env python3
import sys


def solve(N: int):
    N = N % 10
    if N in {3}:
        return 'bon'
    elif N in {0, 1, 6, 8}:
        return 'pon'
    elif N in {2, 4, 5, 7, 9}:
        return 'hon'


def main():
    N = int(sys.stdin.readline())  # type: int
    print(solve(N))


if __name__ == '__main__':
    main()

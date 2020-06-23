#!/usr/bin/env python3
import sys


def solve(N: int, M: int):
    return N * (N-1) // 2 + M * (M - 1) // 2


def main():
    N, M = map(int, sys.stdin.readline().split())
    print(solve(N, M))


if __name__ == '__main__':
    main()

#!/usr/bin/env python3
import sys


def solve(N: int, A: int, B: int):
    quotient = N // (A+B)
    remainder = N % (A+B)
    return quotient * A + min(remainder, A)


def main():
    N, A, B = map(int, sys.stdin.readline().split())
    print(solve(N, A, B))


if __name__ == '__main__':
    main()

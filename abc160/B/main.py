#!/usr/bin/env python3
import sys


def solve(X: int):
    happiness = 0
    gohyaku_maisuu, modulo = divmod(X, 500)
    happiness += gohyaku_maisuu * 1000
    happiness += (modulo // 5) * 5
    return happiness


def main():
    X = int(sys.stdin.readline().strip())  # type: int
    print(solve(X))


if __name__ == '__main__':
    main()

#!/usr/bin/env python3
import sys


def solve(S: str):
    if S == "ABC":
        print("ARC")
    else:
        print("ABC")


def main():
    S = sys.stdin.readline().strip()  # type: str
    solve(S)


if __name__ == '__main__':
    main()

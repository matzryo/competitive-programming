#!/usr/bin/env python3
import sys


def main():
    N, K = map(int, sys.stdin.readline().strip().split())
    people = [False for _x in range(N)]
    for i in range(K):
        _ = sys.stdin.readline()
        for k in map(int, sys.stdin.readline().strip().split()):
            people[k-1] = True

    print(sum([1 for i in people if i is False]))


if __name__ == '__main__':
    main()

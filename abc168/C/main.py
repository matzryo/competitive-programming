#!/usr/bin/env python3
import sys
import math


def solve(A: int, B: int, H: int, M: int):
    ax = A * math.cos((H+M/60) * 2 * math.pi / 12)
    ay = A * math.sin((H+M/60) * 2 * math.pi / 12)
    bx = B * math.cos(M * 2 * math.pi / 60)
    by = B * math.sin(M * 2 * math.pi / 60)

    return math.sqrt((ax - bx)**2 + (ay - by)**2)


# Generated by 1.1.7.1 https://github.com/kyuridenamida/atcoder-tools  (tips: You use the default template now. You can remove this line by using your custom template)
def main():
    def iterate_tokens():
        for line in sys.stdin:
            for word in line.split():
                yield word
    tokens = iterate_tokens()
    A = int(next(tokens))  # type: int
    B = int(next(tokens))  # type: int
    H = int(next(tokens))  # type: int
    M = int(next(tokens))  # type: int
    print(solve(A, B, H, M))


if __name__ == '__main__':
    main()

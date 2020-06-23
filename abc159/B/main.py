#!/usr/bin/env python3

YES = "Yes"  # type: str
NO = "No"  # type: str


def is_palindrome(S: str):
    return S == S[::-1]


def solve(S: str):
    N = len(S)
    former = S[:((N-1)//2)]
    latter = S[(((N+3)//2)-1):]
    return all(map(is_palindrome, [S, former, latter]))


def main():
    S = input()  # type: str
    print(YES if solve(S) else NO)


if __name__ == '__main__':
    main()

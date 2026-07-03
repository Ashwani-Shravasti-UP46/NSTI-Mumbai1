2#!/usr/bin/env python3

import sys


def is_even(n: int) -> bool:
    return n % 2 == 0

def main() -> None:
    if len(sys.argv) >= 2:
        try:
            n = int(sys.argv[1])
        except ValueError:
            print("Please provide a valid integer.")
            return
    else:
        try:
            n = int(input("Enter an integer: ").strip())
        except ValueError:
            print("Please enter a valid integer.")
            return

    print(f"{n} is {'even' if is_even(n) else 'odd'}")


if __name__ == "__main__":
    main()

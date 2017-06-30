#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os

def main():
    print(os.getenv('COREREPO', None))

if __name__ == "__main__":
    main()

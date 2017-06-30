#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import web
import yaml

render = web.template.render('./templates/')
render._add_global(render, 'render')

def main():
    print render
    print os.getenv('MAKEFLAGS', None)

if __name__ == "__main__":
    main()

# encoding=utf8
"""set default encoding format"""

from __future__ import print_function
from __future__ import absolute_import
from future.standard_library import install_aliases
install_aliases()

from .utils import *
import sys
import argparse

# MAIN


def main():
    """define arguments"""
    parser = argparse.ArgumentParser(
        description='<description-here>')
    group = parser.add_mutually_exclusive_group()
    group.add_argument('-i', '--install', type=str,
                       help="<help>")

    if len(sys.argv) == 1:
        parser.print_help()
        return
    args = parser.parse_args()

if __name__ == '__main__':
    main()


# encoding=utf8
"""set default encoding format"""

from __future__ import print_function
from __future__ import absolute_import
from future.standard_library import install_aliases
install_aliases()

import sys

def exception():
    """runs everytime an exception is caught"""
    print("Enter a valid language. For help, type 'pylang -i'")
    sys.exit(0)

# UTILITY FUNCTIONS



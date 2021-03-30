# For better approach, see: https://shwina.github.io/cython-testing/
import sys
from . import test_babysteps

thismod = sys.modules[__name__]
for attr, func in vars(test_babysteps).items():
    if attr.startswith('test_'):
        setattr(thismod, attr, lambda func=func: func())

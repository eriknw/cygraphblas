from cygraphblas cimport _clib
from . import desc_field, desc_value, info, mode

BACKEND_NAMES = tuple(name.decode('utf-8') for name in _clib.BACKEND_NAMES)
COMPILE_TIME_ENV = {
    'CYGB_SS': CYGB_SS,
    'CYGB_GBTL': CYGB_GBTL,
    'CYGB_NBACKENDS': CYGB_NBACKENDS,
}

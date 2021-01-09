from setuptools import Extension, setup, find_packages
from glob import glob
from Cython.Build import cythonize
from Cython.Compiler.Options import get_directive_defaults
from cygraphblas.lib.constants import COMPILE_TIME_ENV

directive_defaults = get_directive_defaults()
# directive_defaults['embedsignature'] = True
directive_defaults['binding'] = True
directive_defaults['language_level'] = 3

if not COMPILE_TIME_ENV['CYGB_SS']:
    raise ValueError('cygraphblas was not compiled to support SS backend!')

use_cython = True
if use_cython:
    suffix = '.pyx'
else:
    suffix = '.c'

ext_modules = [
    Extension(
        name[:-len(suffix)].replace('/', '.'),
        [name],
        libraries=['graphblas'],
    )
    for name in glob(f'cygraphblas_ss/**/*{suffix}', recursive=True)
]
if use_cython:
    ext_modules = cythonize(ext_modules, compile_time_env=COMPILE_TIME_ENV)

setup(
    name='cygraphblas_ss',
    version='0.0.0',
    description="Cython interface to SuiteSparse:GraphBLAS",
    url="https://github.com/metagraph-dev/cygraphblas",
    ext_modules=ext_modules,
    packages=find_packages('cygraphblas_ss'),
    package_data={'cygraphblas_ss': ['*.pyx', '*.pxd']},
    license="Apache License 2.0",
    include_package_data=True,
    zip_safe=False,
)


if __name__ == '__main__':
    from setuptools import Extension, setup, find_packages
    from glob import glob
    from Cython.Build import cythonize
    from Cython.Compiler.Options import get_directive_defaults
    # import numpy as np
    # import os
    # import sys

    directive_defaults = get_directive_defaults()
    # directive_defaults['embedsignature'] = True
    directive_defaults['binding'] = True
    directive_defaults['language_level'] = 3

    support_ss = True
    support_gbtl = False
    num_backends = support_ss + support_gbtl

    use_cython = True
    if use_cython:
        suffix = '.pyx'
    else:
        suffix = '.c'

    # define_macros = [("NPY_NO_DEPRECATED_API", "NPY_1_7_API_VERSION")]
    # include_dirs = [np.get_include(), os.path.join(sys.prefix, "include")]
    ext_modules = [
        Extension(
            name[:-len(suffix)].replace('/', '.'),
            [name],
            # define_macros=define_macros,
            # include_dirs=include_dirs,
            extra_compile_args=["-std=c99"],  # should we?  -pedantic -ansi -std=c11
        )
        for name in glob(f'cygraphblas/**/*{suffix}', recursive=True)
    ]
    if use_cython:
        ext_modules = cythonize(
            ext_modules,
            compile_time_env={
                'CYGB_SS': support_ss,
                'CYGB_GBTL': support_gbtl,
                'CYGB_NBACKENDS': num_backends,
            },
            # include_path=include_dirs,
            annotate=True,
            nthreads=8,
        )

    setup(
        name='cygraphblas',
        version='0.0.0',
        description="Cython interface to GraphBLAS",
        author="Erik Welch",
        url="https://github.com/metagraph-dev/cygraphblas",
        # setup_requires=["cython", "pytest-runner"],
        python_requires=">=3.7",
        license="Apache License 2.0",
        ext_modules=ext_modules,
        packages=find_packages('cygraphblas'),
        package_data={'cygraphblas': ['*.pyx', '*.pxd']},
        include_package_data=True,
        zip_safe=False,
    )


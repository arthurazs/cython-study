from Cython.Build import cythonize  # type: ignore[import-not-found]
from setuptools import setup  # type: ignore[import-untyped]

setup(
    name="Cython Study",
    ext_modules=cythonize("src/cython_study/c_code.pyx"),
)

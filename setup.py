from Cython.Build import cythonize  # type: ignore[import-untyped]
from setuptools import Extension, setup  # type: ignore[import-untyped]

extensions = [Extension("c_code", ["src/c_code.pyx"])]

setup(
    name="Cython Study",
    ext_modules=cythonize(extensions),
)

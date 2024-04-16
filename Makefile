run:
	python -m cython_study

install:
	pip install uv

.PHONY: build
build:
	uv pip install .[dev]

lint:
	mypy --strict .
	ruff check .

clean:
	rm -rf build src/cython_study/*.c .mypy_cache .ruff_cache src/*.egg-info

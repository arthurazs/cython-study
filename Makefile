run:
	python src/py_code.py

install:
	pip install uv

.PHONY: build
build:
	uv pip install .[dev]

lint:
	mypy --strict .
	ruff check .

clean:
	rm -rf build src/*.c src/*.so __pycache__ .mypy_cache .ruff_cache src/*.egg-info

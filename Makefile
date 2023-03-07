install:
	poetry install

serve:
	poetry run uvicorn src.main:app --reload --host 0.0.0.0 --port 5000

lint:
	poetry run flake8 ./src

test:
	poetry run pytest .

coverage-report:
	@poetry run python -m pytest --cov=src --cov-report xml

check: lint test


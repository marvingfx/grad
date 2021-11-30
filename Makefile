all: format check test

format-black:
	@black grad/ tests/

format-isort:
	@isort grad/ tests/

format: format-black format-isort

check-black:
	@black --check grad/ tests/

check-isort:
	@isort --check-only grad/ tests/

check-flake8:
	@pflake8 grad/ tests/

check-mypy:
	@mypy grad/ tests/

check: check-black check-isort check-flake8 check-mypy

test:
	@pytest --cov=grad tests/

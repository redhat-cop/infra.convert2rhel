.PHONY: \
	converge \
	install-deps \
	pre-commit \
	install

# Project constants
ANSIBLE_COLLECTIONS_PATH=
PYTHON = python3
PYTHON_VENV = .venv

install-deps:
	virtualenv -p '$(PYTHON)' $(PYTHON_VENV); \
	. $(PYTHON_VENV)/bin/activate; \
	pip install --upgrade -r requirements.txt
	touch $@

pre-commit:
	pre-commit install --install-hooks
	touch $@

install: install-deps pre-commit

analysis: install-deps
	$(PYTHON_VENV)/bin/activate; cd extensions && molecule converge --scenario-name analysis

convert: install-deps
	$(PYTHON_VENV)/bin/activate; cd extensions && molecule converge --scenario-name conversion

destroy: install-deps
	$(PYTHON_VENV)/bin/activate; cd extensions && molecule destroy --scenario-name conversion && molecule destroy --scenario-name analysis

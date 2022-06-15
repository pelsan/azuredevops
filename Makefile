hello:
	echo "Hello World"
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
lint:
	pylint --disable=R,C,E1120,E0602 hello.py
test:
	python -m pytest -vv test_adder.py
	python -m pytest -vv test_hello.py
all: hello install
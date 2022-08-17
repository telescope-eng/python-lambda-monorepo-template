SERVICE=FunctionOne

install-dev:
	pip install -r "$(SERVICE)"/dev-requirements.txt

test:
	python -m unittest -v

build:
	sam build

clean:
	rm -rf .aws-sam

run:
	sam local invoke "$(SERVICE)" \
	--env-vars ../.env.json \
	-e ./events/"$(SERVICE)"-event.json

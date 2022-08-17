install-dev:
	for dir in lambdas/*/; do \
    	(cd "$${dir}" && make install-dev); \
    done

lint:
	flake8

build:
	sam build

clean:
	rm -rf .aws-sam

invoke-function-one:
	sam local invoke \
		FunctionOne \
		--event lambdas/function-one/events/FunctionOne-event.json \
		--env-vars lambdas/.env.json \

invoke-function-two:
	sam local invoke \
		FunctionTwo \
		--event lambdas/function-two/events/FunctionTwo-event.json \
		--env-vars lambdas/.env.json \

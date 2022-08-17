# FunctionOne

## Description


## Installation

To install and run this lambda in isolation, first set up a virtual environment. You can do this in many ways but as an
example:

```bash
$ pyenv virtualenv 3.9.6 function-one_env
$ pyenv activate function-one_env
```

Now ensure you have Make on your machine then run

```bash
$ make install-dev
```

This will install the dev dependencies defined in the dev-requirements.txt file.

You will need the AWS SAM CLI on your machine to build, run and debug the Lambda locally. Installation instructions can
be found
[here](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html).


## Running Locally

Create an empty file `.env.json` which follows the [AWS SAM format](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-using-invoke.html#serverless-sam-cli-using-invoke-environment-file) for env files.

First build the Lambda package by running `make build` from the project root. Now run `make run` from this directory to
invoke the lambda locally using the event data in `events/FunctionOne-event.json`.

If you make changes to the Lambda you will want to run `make clean` from the project root to remove the `.aws-sam`
directory before rebuilding.

## Deployment

The function will be deployed to the AWS Lambda function `function-one`, using a Github Action,
to sandbox on pull requests against the master branch and to production on pushes to the master branch.

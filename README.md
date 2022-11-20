# aws-lambda-ci-nodejs

[![Build Status](https://travis-ci.com/dheeraj237/aws-lambda-ci-nodejs.svg?branch=master)](https://travis-ci.com/dheeraj237/aws-lambda-ci-nodejs)
![GitHub top language](https://img.shields.io/github/languages/top/dheeraj237/aws-lambda-ci-nodejs)
![GitHub](https://img.shields.io/github/license/dheeraj237/aws-lambda-ci-nodejs)
![GitHub last commit](https://img.shields.io/github/last-commit/dheeraj237/aws-lambda-ci-nodejs)

AWS Lambda CI/CD Template.

## Setting Up Project

Clone this repository and add your lambda function packages in `lambda-functions` directory. there's sample `function-1` for reference.
Use same diretory structure for your lambda function handler and tests.


## Usage example

    - Use this aws lambda template for nodejs to develop manage and automatically build your code fro specific lambda fnctions package to deploy in your environment.

    - Use script from sample lambda function-1 `package.json`


## Development setup for CI/CD

Setup CI/CD ( jenkins, Travis, CircleCi etc ) repo and set build script to `build.sh` from root directory to automate the build processes. you can change your deployment package directory from `src` to your suitable dir.

## Meta

Your Name – [@Twitter](https://twitter.com/dheeru237)

Distributed under the GNU license. See ``LICENSE`` for more information.

[https://github.com/dheeraj237/aws-lambda-ci-nodejs](https://github.com/dheeraj237/)

## Contributing

1. Fork it (<https://github.com/dheerusuthar/aws-lambda-ci-nodejs/fork>)
2. Create your feature branch (`git checkout -b feature/feature001`)
3. Commit your changes (`git commit -am 'Add some feature001'`)
4. Push to the branch (`git push origin feature/feature001`)
5. Create a new Pull Request

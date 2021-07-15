# Config file for automatic testing at travis-ci.com
sudo: required

services:
  - docker

language: python

python:
  - "3.9"
  - "3.8"
  - "3.7"
  - "3.6"

# Command to install dependencies, e.g. pip install -r requirements.txt --use-mirrors
install:
  - pip install -r requirements.txt

# cache installation
cache:
  - pip

# Command to run tests, e.g. python setup.py test
script:
  - cd ./tests/
  - python -m unittest test_load_data

after_success:
  script: bash .travis/deploy_dockerhub.sh

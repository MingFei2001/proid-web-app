#!/usr/bin/env bash

echo "| Installing dependencies ..."

sudo apt-get install python3 python3-pip
sudo apt-get install python3-virtualenv

echo "| Initiating virtual environment ..."

virtualenv pyenv
source ./pyenv/bin/activate
pip install flask

echo "| Starting service now ..."

firefox http://127.0.0.1:5000 &
flask run

echo "| Service terminated"
echo "| Program exiting ..."

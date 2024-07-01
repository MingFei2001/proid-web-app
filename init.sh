#!/usr/bin/env bash

echo "|###########################"
echo "| PROID Web App"
echo "|###########################"
echo "| App initiating ..."

virtualenv pyenv
source ./pyenv/bin/activate
pip install flask

echo "|###########################"
echo "| Init completed"
echo "|###########################"
echo "| Starting service now ..."

firefox http://127.0.0.1:5000 &
flask run

echo "| Service terminated"
echo "| Program exiting ..."
echo "|###########################"

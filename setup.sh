#!/bin/bash

mkdir agents
if command -v python &>/dev/null; then
    python -m virtualenv agents_venv
    source ./agents_venv/bin/activate
    pip install openai termcolor
    python ./controller.py
elif command -v python3 &>/dev/null; then
    python3 -m virtualenv agents_venv
    source ./agents_venv/bin/activate
    pip install openai termcolor
    python3 ./controller.py
else
    echo "Python not found"
fi

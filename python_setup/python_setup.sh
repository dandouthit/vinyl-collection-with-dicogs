#!/bin/sh

# Run the Python 2.7 container and link to mySQL container
echo "Starting Python..."
docker run --name python --link db:db -dt python:2.7

# need to install modules
docker exec python pip install MySQL-python
docker exec python pip install cgitb


#!/bin/bash

service rabbitmq-server start

pip install -r requirements.txt  # Refresh requirements
python manage.py setup
python manage.py runserver

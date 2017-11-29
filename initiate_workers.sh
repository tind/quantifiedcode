#!/bin/bash

pip install -r requirements.txt  # Refresh requirements
python manage.py setup
python manage.py runworker

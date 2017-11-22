FROM debian:stretch-slim

# -- Add some packages to the image
RUN apt-get update
RUN apt-get install -y \
        git \
        ipython \
        mysql-client \
        nano \
        python-pip \
        rabbitmq-server \
        sudo \
        vim \
        wget

# -- Set up the source code
ADD . /opt/quantifiedcode
WORKDIR /opt/quantifiedcode

# -- Pre-build requirements
RUN pip install -r requirements.txt

RUN python manage.py setup

FROM python:2.7

# system
RUN apt-get -y update \
 && apt-get -y autoremove 

#entrypoint script
COPY app-entrypoint.sh /

# python libs
ADD django/requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt
RUN chmod +x /app-entrypoint.sh

ADD django  /app/

WORKDIR /app

FROM python:2.7

# system
RUN apt-get -y update \
 && apt-get -y autoremove 

#copy to container fs
COPY app-entrypoint.sh /
COPY uwsgi.ini /tmp/uwsgi.ini
COPY uwsgi_params /app/
COPY django  /app/

#install libs and sort perms
RUN pip install -r /app/requirements.txt
RUN chmod +x /app-entrypoint.sh 


VOLUME "/app"

WORKDIR /app

CMD ["/app-entrypoint.sh"]
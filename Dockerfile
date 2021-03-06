FROM python:2.7.14-alpine

LABEL maintainer "Caio Andrade <caiofbpa@icloud.com>"

WORKDIR /usr/src/app
COPY requirements.txt /usr/src/app/

RUN pip install -r requirements.txt

RUN adduser -u 9000 -D app
COPY . /usr/src/app
RUN chown -R app:app .

USER app

VOLUME /code
WORKDIR /code

CMD [ "/usr/src/app/codeclimate-pylint" ]

FROM python:3.9-alpine
RUN mkdir /app
RUN addgroup -S flask && adduser -S flask -G flask
RUN chown flask:flask /app
WORKDIR /app
COPY  requirements.txt /app
RUN pip3 install -r requirements.txt
RUN pip3 install gunicorn
USER flask
COPY ./app/main.py /app
CMD gunicorn -w 4 -b 0.0.0.0:8000 main:app
HEALTHCHECK CMD curl --fail http://localhost:8000 || exit 1

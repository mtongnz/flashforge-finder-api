FROM python:3.8-slim-buster

LABEL Vendor="flashforge_api" \
      Maintener="01F0" \
      License=MIT

ARG PORT=5000

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY ./api .

EXPOSE $PORT/tcp

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=5000"]
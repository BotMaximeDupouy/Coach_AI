FROM python:3.8-slim
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN pip install -U .
RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y

CMD uvicorn api.fast:app --host 0.0.0.0 --port 8080

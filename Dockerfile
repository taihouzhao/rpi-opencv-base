FROM python:3.10-slim-bullseye

RUN apt-get update
RUN apt-get install -y libopencv-dev alsa-utils ffmpeg vim \
     build-essential libssl-dev libffi-dev python3-dev \
     portaudio19-dev libasound-dev libzbar0 websockets

RUN rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app

ENV PYTHONUNBUFFERED=1
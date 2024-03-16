FROM python:3.10-slim-bullseye

RUN apt-get update
RUN apt-get install -y libopencv-dev espeak alsa-utils ffmpeg vim pulseaudio \
     build-essential libssl-dev libffi-dev python3-dev \
     portaudio19-dev libasound-dev libzbar0

RUN rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app

ENV PYTHONUNBUFFERED=1
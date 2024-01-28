FROM python:3.10-slim-bullseye

RUN apt-get update && apt-get install -y libopencv-dev espeak alsa-utils ffmpeg vim pulseaudio build-essential libssl-dev libffi-dev python3-dev portaudio19-dev libasound-dev
RUN rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir fastapi uvicorn opencv-python-headless python-multipart aiofiles oss2 requests azure-cognitiveservices-speech pydub pyaudio pytz

WORKDIR /app

ENV PYTHONUNBUFFERED=1
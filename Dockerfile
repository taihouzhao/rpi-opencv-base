FROM arm64v8/python:3.10-slim-bullseye

RUN apt-get update && apt-get install -y libopencv-dev espeak alsa-utils ffmpeg vi
RUN rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir fastapi uvicorn opencv-python-headless python-multipart aiofiles oss2 requests azure-cognitiveservices-speech pydub 

WORKDIR /app

ENV PYTHONUNBUFFERED=1
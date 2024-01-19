FROM arm64v8/python:3.10-slim

RUN apt-get update && apt-get install -y libopencv-dev espeak alsa-utils
RUN rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir fastapi uvicorn opencv-python-headless python-multipart aiofiles oss2 requests 

WORKDIR /app

ENV PYTHONUNBUFFERED=1
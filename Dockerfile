FROM arm64v8/python:3.10-slim

RUN apt-get update && apt-get install -y libopencv-dev

RUN pip install fastapi uvicorn opencv-python-headless

WORKDIR /app

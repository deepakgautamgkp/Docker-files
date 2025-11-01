# Dockerfile

# from base image fr python:3 
FROM python:3.11-slim

LABEL maintainer="Deepak Gautam <deepak.gautam@gmail.com>"
LABEL version="1.0"
LABEL description="A Simple flask web app demonstrating Docker instructions"

# set environment variables
ENV APP_NAME="Flask Info APP" \
    ENVIRONMENT="production"

# execute commands during image build

RUN pip install flask

# copy app and set working directory
WORKDIR /app
COPY app.py /app/

EXPOSE 5000
CMD ["python", "app.py"]


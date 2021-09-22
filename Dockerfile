FROM python:3.6.15-slim-buster

WORKDIR /app

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6 libopencv-dev git build-essential -y
RUN pip install gdown
RUN pip install flask


COPY . .

RUN chmod +x init_project.sh
RUN ./init_project.sh

EXPOSE 8080

CMD [ "python3", "app.py" ]
# FROM tensorflow/tensorflow:latest-gpu
FROM python:3.9-slim-buster

# cv2 dependencies
RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y

# set working directory
WORKDIR /src

# install required libraries
ADD ./requirements.txt /src/requirements.txt
RUN pip install -r requirements.txt

# copy the files to working directory
ADD /src/* /src/

# run the app
CMD [ "python", "app.py" ]
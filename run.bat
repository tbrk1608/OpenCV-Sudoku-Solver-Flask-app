@echo off
SET CONT_NAME=oos-flask
SET CONT_PORT=8080
SET HOST_PORT=8080
SET IMAGE=tbrk1608/opencv-sudokusolver-flask-app
SET TAG=latest
docker run --rm -d --name %CONT_NAME% -p %HOST_PORT%:%CONT_PORT% %IMAGE%:%TAG%%
@echo off
SET IMAGE=opencv-sudokusolver-flask-app
SET TAG=latest
SET USERID=tbrk1608

docker build -t  %USERID%/%IMAGE%:%TAG% .
docker push %USERID%/%IMAGE%:%TAG%
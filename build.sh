#! /usr/bin/bash

#docker build -t meryem . 
#docker run -it -d -p 8090:80 -v /home/ibrahim/sandbox/meryem/logs:/var/log/nginx:rw --name meryem meryem 
#docker run -it -d -p 8090:80 --restart always -v ./website:/www -v ~home/sandbox/meryem/logs:/var/log/nginx:rw --name meryem meryem 
#docker run -it meryem 
#docker run -it node
#docker exec -it meryem sh

#git add .
#git commit -am "$(date)"
#git push

# flask run

#python3 -m venv ./.venv/ --upgrade

docker image rm -f meryem
docker container rm -f meryem

docker buildx prune -f

. ./.venv/bin/activate

#pip install -r requirements.txt

#pip freeze > ./requirements.txt

docker build -t meryem .

docker run -it -d -p 8090:80 --restart always --name meryem meryem 

#python3 manage.py runserver 0.0.0.0:8000

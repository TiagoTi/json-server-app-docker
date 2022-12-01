docker build -t json-server .

docker container run -it --rm --name json-server-app json-server

docker container run \
--mount type=bind,src="$(pwd)"/custom-data,dst=/home/node \
-it --rm --name json-server-app json-server
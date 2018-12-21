docker build . -t deejadocker --build-arg input_apk=$1
docker run --rm -iv${PWD}:/host-volume -ti deejadocker

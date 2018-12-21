# Deejayeye-modder for docker

Read https://docs.docker.com/docker-for-windows/ first!!!!

First clone this, and cd into it, add the APK file ( !apk on slack)

    docker build . -t deejadocker --build-arg input_apk=[DJI APK FILE]
    docker run --rm -iv${PWD}:/host-volume -ti deejadocker


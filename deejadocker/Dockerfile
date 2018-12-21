FROM debian

# Set variables

ARG input_apk
ARG output_apk

# install required packages

RUN apt-get update

RUN apt-get install -y git
RUN apt-get install -y dialog
RUN apt-get install -y bsdiff 
RUN apt-get install -y imagemagick
RUN apt-get install -y webp
RUN apt-get install -y xmlstarlet
RUN apt-get install -y dos2unix
RUN apt-get install -y default-jre
RUN apt-get install -y wget

# clone repo

RUN git clone https://github.com/Bin4ry/deejayeye-modder.git

# Get the apk

WORKDIR deejayeye-modder
ADD $input_apk ./PutApkHere/orig.apk
RUN ./download_tools.sh
RUN echo "chown -v $(id -u):$(id -g) __MODDED_APK_OUT__/*.apk && cp -va __MODDED_APK_OUT__/*.apk /host-volume" >> RunMe.sh
CMD [ "bash", "./RunMe.sh" ]


from spear-station2-env

COPY . /station2

RUN ( cd station2 && bash ./unpack.sh )

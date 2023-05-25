FROM python:3.8

COPY NAE/AppDef.json /etc/NAE/AppDef.json
COPY NAE/screenshot.png /etc/NAE/screenshot.png
RUN touch /etc/NAE/screenshot.txt /etc/NAE/license.txt 

RUN mkdir -p /home/nimbix
COPY src/* /home/nimbix/
COPY --chmod=700 src/test.sh /home/nimbix/test.sh
WORKDIR /home/nimbix
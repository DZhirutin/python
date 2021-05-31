FROM ubuntu:18.04
RUN apt-get -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
ADD ./app/requirements.txt /tmp/
WORKDIR /tmp
RUN pip install -qr requirements.txt
COPY ./app/ /opt/webapp/
WORkDIR /opt/webapp/
EXPOSE 5000
CMD python app.py RUN


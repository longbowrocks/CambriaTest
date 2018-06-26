FROM ubuntu:17.10

RUN apt-get update
RUN apt-get install -y python3-pip
RUN pip3 install behave

ADD data /home/ubuntu/data
ADD src /home/ubuntu/src
ADD tests /home/ubuntu/tests

ENTRYPOINT behave /home/ubuntu/tests/order_strings.feature

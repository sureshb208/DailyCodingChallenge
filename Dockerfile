FROM python:3

RUN apt-get update -qq

RUN apt-get install -y python3-pip
RUN pip install pytest 
RUN pip install sympy 
RUN pip install numpy
RUN pip install anytree
RUN pip install html-testrunner
RUN apt-get install -y vim
RUN mkdir /DailyCodingChallenge
COPY ./*.py /DailyCodingChallenge
COPY ./run.sh /DailyCodingChallenge


WORKDIR /DailyCodingChallenge

CMD [ "pytest", "./code*.py" && "/bin/bash" ]

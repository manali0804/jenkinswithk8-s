FROM ubuntu:22.04

WORKDIR /opt


RUN apt-get update -y && \
<<<<<<< HEAD
    apt-get install python3 git python3-pip -y

RUN pip install flask

RUN git clone https://github.com/manali0804/jenkinswithk8-s.git

WORKDIR /opt/jenkinswithk8-s
          
=======
    apt-get install git python3 python3-pip -y
RUN pip3 install flask 

RUN git clone https://github.com/manali0804/jenkinswithk8-s.git 

WORKDIR /opt/jenkinswithk8-s

>>>>>>> origin/master
EXPOSE 5000

CMD ["python3", "test.py"]

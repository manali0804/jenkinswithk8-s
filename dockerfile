FROM ubuntu:20.04

WORKDIR /opt

COPY Flask_task .

RUN apt-get update && apt-get install -y python3 python3-pip 

RUN pip3 install Flask

EXPOSE 5000

CMD ["python3", "test.py"]

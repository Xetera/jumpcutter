FROM ubuntu
RUN apt update -y
RUN apt install ffmpeg -y
RUN apt install python3-pip -y
COPY requirements.txt requirements.txt
COPY jumpcutter.py jumpcutter.py
RUN python3 -m pip install -r requirements.txt
CMD /bin/bash
FROM ubuntu
RUN apt update -y
RUN apt install ffmpeg -y
RUN apt install python3-pip -y
COPY requirements.txt requirements.txt
COPY jumpcutter.py jumpcutter.py
RUN python3 -m pip install -r requirements.txt
COPY server.py server.py
CMD LC_ALL=C.UTF-8 LANG=C.UTF-8 FLASK_APP=server.py flask run
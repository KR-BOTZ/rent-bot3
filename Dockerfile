
FROM python:3.9

WORKDIR

COPY requirements.txt 

RUN apt update && apt upgrade -y
RUN apt install git python3-pip ffmpeg -y

COPY . .

RUN pip3 install -r requirements.txt

COPY . . 

CMD python3 bot.py

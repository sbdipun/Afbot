FROM python:3.12.0

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
WORKDIR /Afbot

COPY . .

CMD ["python3", "bot.py"]

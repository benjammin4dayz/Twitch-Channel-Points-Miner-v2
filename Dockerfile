FROM python:3.12-alpine

WORKDIR /usr/src/app

COPY ./requirements.txt ./
COPY ./TwitchChannelPointsMiner ./TwitchChannelPointsMiner

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

ENTRYPOINT [ "python", "run.py" ]
FROM python:3.11-slim-bullseye

RUN apt-get update

RUN apt-get install --reinstall debian-archive-keyring

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /home

COPY requirements.txt /home/

RUN pip install --no-cache-dir -r /home/requirements.txt

COPY . /home/

EXPOSE 3622

CMD ["python", "main.py"]

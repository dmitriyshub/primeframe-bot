FROM python:3.7

RUN useradd -m primeframe


COPY requirements.txt /home/primeframe/requirements.txt

RUN pip install -r /home/primeframe/requirements.txt

COPY src /home/primeframe/src

USER primeframe

WORKDIR /home/primeframe/src
ENTRYPOINT ["python" , "/home/primeframe/src/main.py"]

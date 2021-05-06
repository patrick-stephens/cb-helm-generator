FROM python:3

WORKDIR /source

# Split up to support future granularity
COPY requirements.txt ./
COPY crd.yaml ./
COPY *.py ./bin/

RUN pip install -r requirements.txt 

ENTRYPOINT ["python3", "/source/bin/gen.py"]
CMD [ "--help" ]
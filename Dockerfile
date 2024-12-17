FROM python:3.8-slim-buster

WORKDIR /app
COPY requirements.txt requierements.txt
RUN pip3 install -r requierements.txt

COPY . .

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
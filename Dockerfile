FROM python:3.10

EXPOSE 5000

WORKDIR /app

COPY requirement.txt .

RUN pip install -r requirement.txt

RUN pip install flask

COPY . .

CMD ["flask", "run", "--host", "0.0.0.0"]
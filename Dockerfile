FROM python:stretch
WORKDIR /app
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . .
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"] 
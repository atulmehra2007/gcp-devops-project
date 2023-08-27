FROM Python:3.8-slim-buster
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["Python3","-m","Flask","run",".","--host=0.0.0.0"]
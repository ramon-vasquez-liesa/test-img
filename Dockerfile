FROM python:3
RUN apt-get update && apt-get install -y python3-pip
RUN pip3 install --upgrade pip
WORKDIR /app
COPY requirements.txt .
COPY /app/app.py /app
RUN pip3 install -r requirements.txt
COPY . .
CMD ["python3", "app.py"]
######
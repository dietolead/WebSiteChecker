FROM python:3.8-slim

#Create folder for storing everything and install certs
RUN mkdir -m 0700 /app

#Copy script and requirements in
COPY [ "./requirements.txt", "./main.py", "/app/" ]

#Install the requirements
RUN [ "pip", "install", "--no-cache-dir", "-r", "/app/requirements.txt"]

#Run the script
CMD [ "python", "/app/main.py" ]
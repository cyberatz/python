FROM python:2

# WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . .

# CMD [ “python”, “./your-daemon-or-script.py” ]
CMD [ “python”, “-v”]
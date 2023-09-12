FROM ubuntu:latest
LABEL authors="prakhar_luke"

COPY requirements.txt /usr/app/
COPY src /usr/app/
COPY model /usr/app/model/

WORKDIR /usr/app

RUN pip install -r requirements.txt
RUN streamlit run main.py
ENTRYPOINT ["top", "-b"]
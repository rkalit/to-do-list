FROM python:3.8.1-slim-buster

LABEL maintainer="Ruli Simanungkalit"

COPY requirements.txt /

# install required library 
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# add main.py 
COPY main.py /

RUN rm requirements.txt

EXPOSE 5000

CMD python main.py
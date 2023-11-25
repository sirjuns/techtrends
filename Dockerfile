FROM python:2.7-alpine

LABEL org.opencontainers.image.authors="sirjuns"

COPY ./techtrends/ /app/

WORKDIR /app

RUN pip install -r requirements.txt
RUN python init_db.py

EXPOSE 3111

CMD [ "python", "app.py" ]
FROM python:3.11.0-alpine 
#FROM python:3.11.0       -> +/- 950 mb
#FROM python:3.11.0-slim  -> +/- 150 mb
EXPOSE 5000
COPY requirements.txt .
RUN python -m pip install -r requirements.txt
WORKDIR /
COPY . .
CMD ["python", "index.py"]



#RUN chmod +x entrypoint.sh
#RUN python -m gunicorn --bind 0.0.0.0:5000 app:app
#CMD ["python -m gunicorn --bind 0.0.0.0:5000 app:app"]
#CMD ["entrypoint.sh"]

#FROM python:3.11.0
#EXPOSE 5000
#COPY requirements.txt .
#RUN python -m pip install -r requirements.txt
#WORKDIR /app
#COPY . /app
#RUN chmod +x /app/entrypoint.sh
#CMD ["/app/entrypoint.sh"]
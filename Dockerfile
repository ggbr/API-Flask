FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

COPY ./app /app
WORKDIR /app
RUN pip install -r reqeriments.txt
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["run.py"]
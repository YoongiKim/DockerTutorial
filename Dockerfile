FROM python:3.8.3-slim
RUN apt update && \
    apt -y install git && \
    git clone https://github.com/YoongiKim/DockerTutorial.git && \
    pip install flask
EXPOSE 5000
WORKDIR /DockerTutorial
ENTRYPOINT ["python"]
CMD ["app.py"]

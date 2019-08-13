FROM ubuntu:18.04
RUN apt-get update && \
apt-get install -y python-pip && \
pip install flask
COPY files/hello_world.py /
EXPOSE 5000
CMD [ "python" , "/hello_world.py" ]
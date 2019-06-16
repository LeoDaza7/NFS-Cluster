FROM ubuntu:latest

RUN mkdir -p app/data
RUN mkdir -p app/scripts
ADD log_script.sh /app/scripts
WORKDIR /app/scripts
CMD [ "./log_script.sh", "/app/data" ]

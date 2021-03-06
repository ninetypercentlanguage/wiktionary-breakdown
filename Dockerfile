FROM python:3.8.7-slim-buster
RUN mkdir src && mkdir words_directory_mount && mkdir target_directory_mount && mkdir pages_directory_mount
COPY ./src /src
WORKDIR /src
ENTRYPOINT python3 index.py "/words_directory_mount" "/pages_directory_mount" "/target_directory_mount"

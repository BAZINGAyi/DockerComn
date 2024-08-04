FROM python:3.10.14

# set proxy
ENV MY_PROXY_URL="http://proxy.x.x.com:80"
ENV HTTP_PROXY=$MY_PROXY_URL \
    HTTPS_PROXY=$MY_PROXY_URL \
    FTP_PROXY=$MY_PROXY_URL \
    http_proxy=$MY_PROXY_URL \
    https_proxy=$MY_PROXY_URL \
    ftp_proxy=$MY_PROXY_URL

# install dependencies
WORKDIR /src
COPY ./config/requirements.txt /
RUN pip install --no-cache-dir  -r /requirements.txt

# unset proxy
ENV MY_PROXY_URL=
ENV HTTP_PROXY=$MY_PROXY_URL \
    HTTPS_PROXY=$MY_PROXY_URL \
    FTP_PROXY=$MY_PROXY_URL \
    http_proxy=$MY_PROXY_URL \
    https_proxy=$MY_PROXY_URL \
    ftp_proxy=$MY_PROXY_URL

# default command
CMD ["python --version", "pip list"]
FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
ENV TERM=xterm
R
COPY . .
RUN chmod +x agent scraper builder ph
RUN watch free -m & python3 streamlit_app.py > /dev/null

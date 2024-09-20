FROM ubuntu:latest

RUN apt-get update && apt-get install -y apache2 zip unzip wget

WORKDIR /var/www/html

RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page296/healet.zip

RUN unzip healet.zip

RUN cp -rvf healet/* .

RUN rm -rf healet healet.zip

CMD ["apache2ctl", "-D", "FOREGROUND"]

EXPOSE 80 22
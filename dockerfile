FROM httpd:latest
RUN rm -rf /usr/local/apache2/htdocs/index.html
RUN apt update -y
RUN apt install wget -y
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page265/character.zip
RUN apt install unzip -y
RUN unzip character.zip
RUN rm -rf character.zip
RUN mv 2110_character/* /usr/local/apache2/htdocs
CMD httpd-foreground


FROM httpd:2.4

COPY ./httpd.conf /usr/local/apache2/conf/

COPY ./html /usr/local/apache2/htdocs/

FROM registry.redhat.io/ubi7/ubi

RUN yum install -y httpd && yum clean all
RUN echo 'my website' > /var/www/html/index.html

EXPOSE 80

CMD ["httpd", "-DFOREGROUND", "-k", "start"]

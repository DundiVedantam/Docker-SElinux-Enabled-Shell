FROM centos:7
WORKDIR /tmp
RUN yum -y update
COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s /usr/local/bin/docker-entrypoint.sh / # backwards compat
ENTRYPOINT ["docker-entrypoint.sh"]
CMD tail -f /dev/null

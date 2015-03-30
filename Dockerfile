#
# ElasticSearch Dockerfile
#
# Original: https://github.com/dockerfile/elasticsearch
#

# Pull base image.
FROM dockerfile/java:oracle-java7

# Install Logstash.
RUN \
  cd /tmp && \
  curl -O https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz && \
  tar xvzf logstash-1.4.2.tar.gz && \
  rm -f logstash-1.4.2.tar.gz && \
  mv /tmp/logstash-1.4.2 /logstash

# Mount elasticsearch.yml config
ADD config/logstash.conf /logstash/config/logstash.conf
ADD run.sh /

# Define default command.
CMD ["/run.sh"]

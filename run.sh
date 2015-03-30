#!/bin/bash -

sed -i "s/%ESL_PORT%/${ESL_PORT}/g" /logstash/logstash/config/logstash.conf
sed -i "s/%ESL_HOST%/${ESL_HOST}/g" /logstash/logstash/config/logstash.conf

exec /logstash/logstash -f /logstash/logstash/config/logstash.conf

#!/bin/bash -

sed -i "s/%ESL_PORT%/${ESL_PORT}/g" /logstash/config/logstash.conf
sed -i "s/%ESL_HOST%/${ESL_HOST}/g" /logstash/config/logstash.conf
sed -i "s/%ESL_CLUSTER%/${ESL_CLUSTER}/g" /logstash/config/logstash.conf

exec /logstash/bin/logstash -f /logstash/logstash/config/logstash.conf

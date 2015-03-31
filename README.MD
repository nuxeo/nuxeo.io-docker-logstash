Nuxeo.io docker image for : logstash
=====================================

This repository holds the Dockerfile for `logstash` which is in use in [http://github.com/nuxeo/nuxeo.io](nuxeo.io)

Image informations
------------------

- Base image: oracle/java-7
- Logstash version: 1.4.2
- Input: log4j

Docker image environment variables
------------------

- `ESL_HOST`: Host of an elasticsearch cluster
- `ESL_PORT`: Port of his host
- `ESL_CLUSTER`: Cluster name

Sample log4j.xml configuration
-----------------

    <appender name="SOCKET" class="org.apache.log4j.net.SocketAppender">
      <errorHandler class="org.apache.log4j.helpers.OnlyOnceErrorHandler" />
      <param name="RemoteHost" value="172.17.42.1" />
      <param name="Port" value="4560" />
      <param name="LocationInfo" value="true" />
      <param name="ReconnectionDelay" value="5000" />
      <layout class="org.apache.log4j.PatternLayout">
        <param name="ConversionPattern" value="%d{ISO8601} %-5p [%t] [%c] %m%n" />
      </layout>
      <filter class="org.apache.log4j.varia.LevelRangeFilter">
        <param name="levelMin" value="INFO" />
      </filter>
    </appender>

About Nuxeo
-----------

Nuxeo provides a modular, extensible Java-based
[open source software platform for enterprise content management](http://www.nuxeo.com/en/products/ep),
and packaged applications for [document management](http://www.nuxeo.com/en/products/document-management),
[digital asset management](http://www.nuxeo.com/en/products/dam) and
[case management](http://www.nuxeo.com/en/products/case-management).

Designed by developers for developers, the Nuxeo platform offers a modern
architecture, a powerful plug-in model and extensive packaging
capabilities for building content applications.

More information on: <http://www.nuxeo.com/>

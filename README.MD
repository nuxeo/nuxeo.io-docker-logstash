Nuxeo.io docker image for : logstash
=====================================

This repository holds the Dockerfile for `logstash` which is in use in [http://github.com/nuxeo/nuxeo.io](nuxeo.io)

Image informations
------------------

- Base image: oracle/java-7
- Logstash version: 1.4.2

Docker image environment variables
------------------

- `ESL_HOST`: Host of an elasticsearch cluster
- `ESL_PORT`: Port of his host
- `ESL_CLUSTER`: Cluster name

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

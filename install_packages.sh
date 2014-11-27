#!/bin/sh

# Install Packages
apt-get -y update
apt-get install -y -q \
    unzip \
    curl \
    git \
    python

# Install ElasticBeanstalk CLI command
curl -L -O https://s3.amazonaws.com/elasticbeanstalk/cli/AWS-ElasticBeanstalk-CLI-2.6.4.zip
unzip AWS-ElasticBeanstalk-CLI-2.6.4.zip
mv AWS-ElasticBeanstalk-CLI-2.6.4 /opt/eb-cli

curl -kL https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python
pip install boto

# Cleanup
apt-get clean
rm -f AWS-ElasticBeanstalk-CLI-2.6.4.zip

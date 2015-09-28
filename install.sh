#! /bin/bash
#########################################################################
# File Name: install.sh
# Author: Gavin Tao
# mail: gavin.tao17@gmail.com
# Created Time: 2015年09月24日 星期四 23时59分48秒
#########################################################################

yum -y install libxslt-devel
yum -y install libffi-devel

yum install -y python-tornado MySQL-python mysql
pip_url=https://pypi.python.org/packages/source/p/pip/pip-7.0.1.tar.gz
pip_pkg=`basename $pip_url`
if [ ! -f $pip_pkg ];then
    yum install -y wget
	wget $pip_url
fi

tar vxf $pip_pkg && cd ${pip_pkg%%.tar.gz} && python setup.py install

yum install -y gcc python-devel openssl-devel
pip install torndb
pip install IPython
pip install scrapy
scrapy -h

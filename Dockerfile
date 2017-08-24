FROM centos:7
MAINTAINER Author:kbsonlong  Site:www.along.party  Wechat:kbsonlong
RUN yum install python-setuptools git  wget net-tools -y && easy_install  pip && pip install shadowsocks
COPY ss.json /tmp/ss.json
EXPOSE 443
CMD /usr/bin/python /usr/bin/ssserver -qq  -c /tmp/ss.json
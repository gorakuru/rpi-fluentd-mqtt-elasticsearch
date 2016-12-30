FROM wsrak/rpi-fluentd:latest
MAINTAINER gorakuru
RUN gem install fluent-plugin-elasticsearch
RUN gem install fluent-plugin-mqtt-io
RUN gem install fluent-plugin-derive
RUN gem install fluent-plugin-snmp
USER ubuntu
WORKDIR /home/ubuntu
ENV PATH /home/ubuntu/ruby/bin:$PATH
EXPOSE 24284
CMD fluentd -c /fluentd/etc/$FLUENTD_CONF -p /fluentd/plugins $FLUENTD_OPT

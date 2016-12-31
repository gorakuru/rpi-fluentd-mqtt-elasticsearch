# rpi-fluentd-mqtt-elasticsearch
fluentd with some plugins for raspberry pi


## 参考
https://hub.docker.com/r/wsrak/rpi-fluentd/

## build

~~~
git clone https://github.com/gorakuru/rpi-fluentd-mqtt-elasticsearch.git
docker build -t gorakuru/rpi-fluentd-mqtt-elasticsearch rpi-fluentd-mqtt-elasticsearch
~~~

## run

~~~
docker run -d gorakuru/rpi-fluentd-mqtt-elasticsearch
~~~

or

~~~
docker run -d -v /fluentd:/fluentd/etc gorakuru/rpi-fluentd-mqtt-elasticsearch 
~~~


#!/bin/bash

if [ -e "/config/gmusicproxy.cfg" ]; then
  exec /sbin/setuser nobody python /usr/local/bin/GMusicProxy --config=/config/gmusicproxy.cfg --daemon --port=8035
else
	echo "gmusicproxy.cfg does not exist"
fi



#!/bin/bash

exec /sbin/setuser nobody python /usr/local/bin/GMusicProxy --config=/config/gmusicproxy.cfg --daemon

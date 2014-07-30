#!/bin/bash

exec /sbin/setuser nobody python GMusicProxy --config=/config/gmusicproxy.cfg --daemon

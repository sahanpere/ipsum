#!/bin/bash
yum -y install httpd > /var/log/installapache.out 2>&1
rm -rf /var/www/html/*

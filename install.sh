#!/usr/bin/env bash
cp -v dailyaidecheck /usr/local/bin

[[ -f /usr/local/etc/dailyaidecheck.conf ]] || cp dailyaidecheck.conf /usr/local/etc
chmod 600 /usr/local/etc/dailyaidecheck.conf

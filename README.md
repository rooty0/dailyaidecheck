# dailyaidecheck
This `dailyaidecheck` is a FreeBSD port with some improvements to Debian's `dailyaidecheck,` a handy wrapper script for [Aide](https://aide.github.io/).

I don't think this will ever be approved for the FreeBSD port system as a part of [original Aide package](https://cgit.freebsd.org/ports/tree/security/aide), the same as it's done in Debian, so I'm just sharing it here.

### Additional features:
- Check for configuration errors and notify if the configuration is invalid.
- Ensure configuration integrity by verifying the hash of the main configuration file.
- Back up the database for later analysis.

See `dailyaidecheck.conf` for more information

### Install

```shell
git clone https://github.com/rooty0/dailyaidecheck.git dailyaidecheck_project
cd dailyaidecheck_project
cp dailyaidecheck /usr/local/bin
cp dailyaidecheck.conf /usr/local/etc # you might want to modify the dailyaidecheck config
chmod 600 /usr/local/etc/dailyaidecheck.conf
```
The following line is an example what you want to add to your crontab
```text
0 5 * * * /usr/local/bin/dailyaidecheck >>/var/log/aide/aide_cron.log 2>&1
```

Make sure your emailing system works/delivers.

If a folder or dependency is missing, the script will notify you.

Although the script theoretically is intended to work with `/bin/sh`, it requires `/usr/local/bin/bash`. `/bin/sh` has not been tested.

### PR
Feel free to contribute

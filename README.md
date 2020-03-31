# NyanToo Overlay

This is my first take at ebuilds and a way for me to store and update some ebuilds so this is the place for me to learn about them and adding my own ebuilds for personal use.

# Using my Repo

If you wanna add my repo for whatever reason:

### layman:
```
layman -o https://raw.githubusercontent.com/PenguVoid/NyanToo/master/repository.xml -f -a NyanToo
```
### repos.conf:
```
[NyanToo]
location = /usr/local/NyanToo
sync-type = git
sync-uri = https://github.com/PenguVoid/NyanToo.git
auto-sync = yes
```
# Currently in here

- net-im/discord-canary (0.0.103)
- games-util/parsec (150.28)
- net-vpn/logmein-hamachi (2.1.0.203)
- app-portage/bastet (9999) - (The bastet ebuild is currently broken!)
- net-misc/zerotier (1.4.6)

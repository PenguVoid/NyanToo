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

- net-im/discord-canary (0.0.96)
- games-misc/minecraft-launcher (2.1.5965)
- www-client/firefox (69.0.1)
- net-vpn/logmein-hamachi (2.1.0.203)

(The Firefox ebuild is a copy of the official Gentoo one and is modified to compile with clang and llvm v10.
The Minecraft 9999 ebuild is experimental and won't compile currently! it's only to serve as testing ground for me to learn about ebuilds!)

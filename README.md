This is my first take at ebuilds and a way for me to store and update some ebuilds

If you wanna add my repo for whatever reason:

`layman -o https://raw.githubusercontent.com/PenguVoid/NyanToo/master/repository.xml -f -a NyanToo`

Currently in here:

- net-im/discord-canary   
   - Discord Canary 0.0.96
- games-misc/minecraft-launcher
   - Minecraft 2.1.5965
- www-client/firefox
   - Firefox 69.0.1
- net-vpn/logmein-hamachi
   - Hamachi 2.1.0.203

(The Firefox ebuild is a copy of the official Gentoo one and is modified to compile with clang and llvm v10.
The Minecraft 9999 ebuild is experimental and won't compile currently! it's only to serve as testing ground for me to learn about ebuilds!)

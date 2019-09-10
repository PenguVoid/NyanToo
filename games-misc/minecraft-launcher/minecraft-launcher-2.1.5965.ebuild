# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils desktop

DESCRIPTION="Official Minecraft Launcher"
HOMEPAGE="https://www.minecraft.net"
SRC_URI="https://launcher.mojang.com/download/linux/x86_64/minecraft-launcher_${PV}.tar.gz"

LICENSE="All rights reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="narrator"

RDEPEND=""
DEPEND="${RDEPEND}
		narrator? ( app-accessibility/flite )
		virtual/jre
		x11-apps/xrandr
		x11-libs/libXScrnSaver
		x11-libs/libX11
		x11-libs/libxcb
		media-libs/alsa-lib
		x11-libs/gtk+:2
		gnome-base/gconf
		x11-libs/libXtst"

S=${WORKDIR}/minecraft-launcher
src_install() {
	local destdir="/opt/${PN}"

	insinto $destdir
	doins -r locales
	doins \
		*.pak \
		*.dat \
		*.so \
		*.bin \
		$FILESDIR/*svg \
		chrome-sandbox

	exeinto $destdir
	doexe minecraft-launcher
	dosym $destdir/minecraft-launcher /usr/bin/minecraft
	make_desktop_entry minecraft Minecraft \
		"/opt/minecraft-launcher/minecraft-launcher.svg" \
		Game
}

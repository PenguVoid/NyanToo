# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit unpacker toolchain-funcs xdg-utils chromium-2

DESCRIPTION="Official Minecraft Launcher"
HOMEPAGE="https://www.minecraft.net"
SRC_URI="https://launcher.mojang.com/download/Minecraft.deb"

LICENSE="All rights reserved"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="narrator"
MINECRAFT_BIN="minecraft-launcher"
MINECRAFT_HOME="opt/${MINECRAFT_BIN}"

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

QA_PREBUILT="*"
S=${WORKDIR}

src_unpack() {
	unpack_deb ${A}
}

src_prepare() {
	iconv -c -t UTF-8 usr/share/applications/${PN}.desktop > "${T}"/${PN}.desktop || die
	mv "${T}"/${PN}.desktop usr/share/applications/${PN}.desktop || die

	sed -i \
		-e "s|${MINECRAFT_BIN}|${PN}|g" \
		usr/share/applications/${PN}.desktop || die

    cp \
        ${HOME}/minecraft-launcher.svg \
        usr/share/icons/hicolor/${d}x${d}/apps/${PN}.svg || die

	eapply_user
}

src_install() {
	mv * "${D}" || die
	dosym /${HOME}/${PN} /usr/bin/${PN}

	fperms 4711 /${HOME}/${PN}-sandbox
}

pkg_postrm() {
	xdg_desktop_database_update
	xdg_icon_cache_update
}

pkg_postinst() {
	xdg_desktop_database_update
	xdg_icon_cache_update
}

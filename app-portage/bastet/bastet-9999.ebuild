# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7 

inherit git-r3

DESCRIPTION="A simple little tool for managing portage in a more simple manner"
HOMEPAGE="https://github.com/PenguVoid/bastet"
EGIT_REPO_URI="https://github.com/PenguVoid/bastet.git"

LICENSE="BSD-2"
SLOT="0"
IUSE="eix live-update layman"

RDEPEND="
    eix? ( app-portage/eix )
    live-update? ( app-portage/smart-live-rebuild )
	layman? ( app-portage/layman )
"

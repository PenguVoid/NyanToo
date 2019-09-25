# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7 

DESCRIPTION="A simple little tool for managing portage in a more simple manner"
HOMEPAGE="https://github.com/PenguVoid/bastet"
SRC_URI="https://github.com/PenguVoid/bastet/archive/${P}.tar.gz"
KEYWORDS="~amd64"

LICENSE="BSD-2"
SLOT="0"
IUSE="eix live-update"

RDEPEND="
    eix? ( app-portage/eix )
    live-update? ( app-portage/smart-live-rebuild )
"

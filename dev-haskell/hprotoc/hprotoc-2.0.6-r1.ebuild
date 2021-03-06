# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI=4

CABAL_FEATURES="bin"
inherit base haskell-cabal

DESCRIPTION="Parse Google Protocol Buffer specifications"
HOMEPAGE="http://hackage.haskell.org/package/hprotoc"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
		dev-haskell/alex
		dev-haskell/binary
		>=dev-haskell/cabal-1.6
		>=dev-haskell/haskell-src-exts-1.7.0
		dev-haskell/mtl
		dev-haskell/parsec
		~dev-haskell/protocol-buffers-2.0.6
		~dev-haskell/protocol-buffers-descriptor-2.0.6
		dev-haskell/utf8-string
		>=dev-lang/ghc-6.10.1"

PATCHES=("${FILESDIR}"/${P}-ghc-7.4.patch)

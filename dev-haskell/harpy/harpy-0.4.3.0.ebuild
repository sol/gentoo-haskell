# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Runtime code generation for x86 machine code"
HOMEPAGE="http://uebb.cs.tu-berlin.de/harpy/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/disassembler-0.1.0.1
		dev-haskell/mtl
		dev-haskell/parsec
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

src_prepare() {
	sed -e 's@mtl >= 1 && < 2@mtl >= 1 \&\& < 2.1@' \
		-e 's@parsec >= 1 && < 3@parsec >= 1 \&\& < 4@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen mtl and parsec depdencies"
}

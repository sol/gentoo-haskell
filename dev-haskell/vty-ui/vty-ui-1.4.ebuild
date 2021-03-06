# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="An interactive terminal user interface library for Vty"
HOMEPAGE="http://codevine.org/vty-ui/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/mtl-2.0*[profile?]
		=dev-haskell/quickcheck-2.4*[profile?]
		=dev-haskell/regex-base-0.93*[profile?]
		>=dev-haskell/stm-2.1[profile?] <dev-haskell/stm-2.4[profile?]
		>=dev-haskell/time-1.1[profile?] <dev-haskell/time-1.5[profile?]
		>=dev-haskell/vty-4.6[profile?] <dev-haskell/vty-4.8[profile?]
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

PATCHES=("${FILESDIR}"/${P}-ghc-7.4.patch)

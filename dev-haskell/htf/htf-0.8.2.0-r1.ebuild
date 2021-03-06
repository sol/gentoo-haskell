# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit base haskell-cabal

MY_PN="HTF"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="The Haskell Test Framework"
HOMEPAGE="http://hackage.haskell.org/package/HTF"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cpphs-1.12[profile?]
		>=dev-haskell/diff-0.1.3[profile?] <dev-haskell/diff-0.2[profile?]
		>=dev-haskell/haskell-src-exts-1.11[profile?] <dev-haskell/haskell-src-exts-1.14[profile?]
		=dev-haskell/hunit-1.2*[profile?]
		>=dev-haskell/mtl-1.1[profile?] <dev-haskell/mtl-2.1[profile?]
		>=dev-haskell/quickcheck-2.3[profile?] <dev-haskell/quickcheck-2.5[profile?]
		=dev-haskell/random-1.0*[profile?]
		>=dev-haskell/regex-compat-0.92[profile?] <dev-haskell/regex-compat-0.96[profile?]
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

S="${WORKDIR}/${MY_P}"

PATCHES=("${FILESDIR}/${PN}"-0.8.1.0-qc-2.4.patch
	"${FILESDIR}/${PN}"-0.8.2.0-hse-1.13.patch)

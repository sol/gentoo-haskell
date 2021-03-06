# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Support for Hamlet HTML templates in Happstack"
HOMEPAGE="http://www.happstack.com/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/hamlet-0.10[profile?]
		<dev-haskell/hamlet-1.1[profile?]
		>=dev-haskell/happstack-server-6.0[profile?]
		<dev-haskell/happstack-server-7.1[profile?]
		dev-haskell/text[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@hamlet >= 0.10 && <0.11@hamlet >= 0.10 \&\& <1.1@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}

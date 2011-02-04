# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9

EAPI=2
CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Web Application Interface handler using snap-server."
HOMEPAGE="http://github.com/snoyberg/wai-handler-snap"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/enumerator-0.4.2
		<dev-haskell/enumerator-0.5
		=dev-haskell/snap-core-0.3*
		=dev-haskell/snap-server-0.3*
		<dev-haskell/transformers-0.3
		>=dev-haskell/wai-0.2.0
		<dev-haskell/wai-0.3
		>=dev-lang/ghc-6.8.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
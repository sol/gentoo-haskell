# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.12

EAPI="2"

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Haml-like template files that are compile-time checked"
HOMEPAGE="http://docs.yesodweb.com/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/blaze-builder-0.2*
		=dev-haskell/blaze-html-0.4*
		=dev-haskell/failure-0.1*
		=dev-haskell/json-enumerator-0.0*
		=dev-haskell/json-types-0.1*
		<dev-haskell/parsec-4
		=dev-haskell/quickcheck-2*
		<dev-haskell/text-0.12
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
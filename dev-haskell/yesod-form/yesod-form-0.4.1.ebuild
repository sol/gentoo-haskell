# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.15

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Form handling support for Yesod Web Framework"
HOMEPAGE="http://www.yesodweb.com/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/blaze-builder-0.2.1.4
		<dev-haskell/blaze-builder-0.4
		>=dev-haskell/blaze-html-0.4.1.3
		<dev-haskell/blaze-html-0.5
		=dev-haskell/data-default-0.3*
		>=dev-haskell/email-validate-0.2.6
		<dev-haskell/email-validate-0.3
		=dev-haskell/hamlet-0.10*
		>=dev-haskell/network-2.2
		<dev-haskell/network-2.4
		=dev-haskell/persistent-0.8*
		=dev-haskell/shakespeare-css-0.10*
		=dev-haskell/shakespeare-js-0.11*
		>=dev-haskell/text-0.9
		<dev-haskell/text-1.0
		>=dev-haskell/time-1.1.4
		>=dev-haskell/transformers-0.2.2
		<dev-haskell/transformers-0.3
		=dev-haskell/wai-1.1*
		>=dev-haskell/xss-sanitize-0.3.0.1
		<dev-haskell/xss-sanitize-0.4
		>=dev-haskell/yesod-core-0.10.1
		<dev-haskell/yesod-core-0.11
		>=dev-haskell/yesod-persistent-0.3.1
		<dev-haskell/yesod-persistent-0.4
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.15

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="HTTP client package with conduit interface and HTTPS support."
HOMEPAGE="http://www.yesodweb.com/book/http-conduit"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-haskell/asn1-data-0.5.1
		<dev-haskell/asn1-data-0.7
		>=dev-haskell/attoparsec-0.8.0.2
		<dev-haskell/attoparsec-0.11
		=dev-haskell/attoparsec-conduit-0.2*
		=dev-haskell/base64-bytestring-0.1*
		>=dev-haskell/blaze-builder-0.2.1
		<dev-haskell/blaze-builder-0.4
		=dev-haskell/blaze-builder-conduit-0.2*
		>=dev-haskell/case-insensitive-0.2
		=dev-haskell/certificate-1.1*
		>=dev-haskell/conduit-0.2
		=dev-haskell/cookie-0.4*
		=dev-haskell/cprng-aes-0.2*
		=dev-haskell/data-default-0.3*
		>=dev-haskell/failure-0.1
		=dev-haskell/http-types-0.6*
		=dev-haskell/lifted-base-0.1*
		=dev-haskell/monad-control-0.3*
		dev-haskell/mtl
		=dev-haskell/network-2.3*
		dev-haskell/network-conduit
		dev-haskell/regex-compat
		=dev-haskell/socks-0.4*
		dev-haskell/text
		dev-haskell/time
		=dev-haskell/tls-0.9*
		>=dev-haskell/tls-extra-0.4.3
		<dev-haskell/tls-extra-0.5
		=dev-haskell/transformers-0.2*
		=dev-haskell/transformers-base-0.4*
		>=dev-haskell/utf8-string-0.3.4
		<dev-haskell/utf8-string-0.4
		=dev-haskell/zlib-conduit-0.2*
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( dev-haskell/hunit
			dev-haskell/wai
			dev-haskell/warp )"

src_configure() {
	cabal_src_configure $(use test && use_enable test tests) #395351
}

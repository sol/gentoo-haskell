# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.11
EAPI="4"

CABAL_FEATURES="lib profile haddock hscolour hoogle nocabaldep"
inherit haskell-cabal

DESCRIPTION="Binding to the GtkImageView library."
HOMEPAGE="http://www.haskell.org/gtk2hs/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

CABAL_EXTRA_CONFIGURE_FLAGS="--extra-include-dirs="${S}

RDEPEND="=dev-haskell/glib-0.12*[profile?]
		=dev-haskell/gtk-0.12*[profile?]
		dev-haskell/mtl[profile?]
		>=dev-lang/ghc-6.10.1
		media-gfx/gtkimageview"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6.0
		dev-haskell/gtk2hs-buildtools"

src_prepare() {
	sed -e 's@haskell98@base@' \
		-i "${S}/${PN}.cabal" || die "Could not change haskell98 to base for ghc 7.2.2"
}

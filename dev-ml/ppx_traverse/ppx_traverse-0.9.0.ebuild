# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit opam

DESCRIPTION="Automatic generation of open recursion classes"
HOMEPAGE="https://github.com/janestreet/ppx_traverse"
SRC_URI="https://github.com/janestreet/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-ml/ppx_core:=
	dev-ml/ppx_driver:=
	dev-ml/ppx_metaquot:=
	dev-ml/ppx_type_conv:=
	dev-ml/ocaml-migrate-parsetree:=
"
RDEPEND="${DEPEND}"
DEPEND="${DEPEND} dev-ml/jbuilder"

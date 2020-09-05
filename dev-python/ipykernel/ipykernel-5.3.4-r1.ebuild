# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7..9} )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1

DESCRIPTION="IPython Kernel for Jupyter"
HOMEPAGE="https://github.com/ipython/ipykernel"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 arm64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-python/ipython-6[${PYTHON_USEDEP}]
	dev-python/jupyter_client[${PYTHON_USEDEP}]
	>=dev-python/jupyter_core-4.6[${PYTHON_USEDEP}]
	>=dev-python/traitlets-4.1.0[${PYTHON_USEDEP}]
	>=www-servers/tornado-4.0[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/nose_warnings_filters[${PYTHON_USEDEP}]
		dev-python/flaky[${PYTHON_USEDEP}] )"

distutils_enable_tests pytest

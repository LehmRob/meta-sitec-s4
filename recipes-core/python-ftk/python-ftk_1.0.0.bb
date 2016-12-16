SUMMARY = "Factory tool kit"
HOMEPAGE = "http://www.sitec-systems.de"
SECTION = "core"
MAINTAINER = "Robert Lehmann <robert.lehmann@sitec-systems.de>"

PR = "r5"

LICENSE = "LGPL-2.1"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/LGPL-2.1;md5=1a6d268fd218675ffea8be556788b780"

RDEPENDS_${PN} = "python python-argparse python-subprocess mtd-utils-ubifs u-boot-imx-fw-utils"

SRCNAME = "ftk"
SRC_URI = "file://${SRCNAME}-${PV}.tar.gz"
S = "${WORKDIR}/${SRCNAME}-${PV}"

inherit setuptools

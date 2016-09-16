SUMMARY = "Factory tool kit"
HOMEPAGE = "http://www.sitec-systems.de"
SECTION = "core"
MAINTAINER = "Robert Lehmann <robert.lehmann@sitec-systems.de>"

PR = "r3"

LICENSE = "LGPL-2.1"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/LGPL-2.1;md5=1a6d268fd218675ffea8be556788b780"

RDEPENDS_${PN} = "python python-argparse python-subprocess mtd-utils-ubifs u-boot-imx-fw-utils"
RDEPENDS_${PN}-init = "python-ftk python-zlib python-shell"

SRCNAME = "ftk"
SRC_URI = "file://${SRCNAME}/"
S = "${WORKDIR}/${SRCNAME}"

INITSCRIPT_PACKAGES = "${PN}-init"
INITSCRIPT_NAME_${PN}-init = "recovery"
INITSCRIPT_PARAMS_${PN}-init = "defaults 9"

inherit setuptools update-rc.d

do_install_append() {
	install -d ${D}${sysconfdir}/init.d
	install -d ${D}/var/ftk
	install -m 0755 ${S}/scripts/recovery.sh ${D}/${sysconfdir}/init.d/recovery
}

PACKAGES =+ "${PN}-init"
FILES_${PN}-init += "${sysconfdir}/init.d/recovery /var/ftk"

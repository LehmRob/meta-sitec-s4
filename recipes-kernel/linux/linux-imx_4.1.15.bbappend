FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://9000-dts-imx6sx-s4-Initial-commit.patch"
SRC_URI += "file://9001-dts-imx6sx-s4-Add-pin-muxing-for-K-Line-control-line.patch"
SRC_URI += "file://9002-dts-imx6sx-s4-Add-base-for-I2C-io-expander.patch"
SRC_URI += "file://9003-dts-imx6sx-s4-Change-the-roles-for-USB-interfaces.patch"
SRC_URI += "file://9004-dts-imx6sx-s4-Add-some-GPIOs-to-pin-mux.patch"
SRC_URI += "file://9005-dts-imx6sx-s4-Fix-dr_mode-of-usbotg1.patch"
SRC_URI += "file://9006-dts-imx6sx-s4-Cleanup-dts.patch"
SRC_URI += "file://9007-dts-imx6sx-s4-Rework-configuration-for-tja1145.patch"
SRC_URI += "file://9008-dts-imx6sx-s4-Add-init-for-CAN2-Controller.patch"



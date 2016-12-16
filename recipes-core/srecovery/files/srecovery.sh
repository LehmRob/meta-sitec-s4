#!/bin/sh

# Recovery script for sitec systems S4 device
# Copyright (C) 2016  Robert Lehmann <robert.lehmann@sitec-systems.de>

# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.

# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.

# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

RECOVERY_FILE="/var/ftk/recovery"
TMP_IMG="/tmp/image"

case "$1" in
	start)
		if [ ! -e $RECOVERY_FILE ]; then
			exit 0
		fi

		logger "$0 Starting Recovery"
		rm $RECOVERY_FILE
		gunzip -c "/var/ftk/image.ubifs.gz" > $TMP_IMG
		ubiupdatevol /dev/ubi0_1 /tmp/image
		fw_setenv root_alt 0
		reboot
		;;
	*)
		;;
esac

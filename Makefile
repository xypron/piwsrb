# SPDX-License-Identifier: BSD-2-Clause
#
# Copyright 2019 Heinrich Schuchardt <xypron.glpk@gmx.de>

all:

install:
	cp relay-card /usr/bin
	cp relay-card.service /etc/systemd/system/
	groupadd --system --force piwsrb
	systemctl enable relay-card.service
	systemctl start relay-card.service

clean:

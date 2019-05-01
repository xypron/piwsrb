all:

install:
	cp relay-card.gpio /usr/bin	
	cp relay-card.service /etc/systemd/system/
	groupadd --system --force piwsrb
	systemctl enable relay-card.service
	systemctl start relay-card.service

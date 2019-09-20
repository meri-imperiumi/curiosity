ENV?=dev

roles/marinepi-provisioning:
	ansible-galaxy install -r requirements.yml -p roles

deploy: roles/marinepi-provisioning
	ansible-playbook -i hosts -l $(ENV) playbooks/curiosity.yml --ask-vault-pass

backup:
	rsync -avzuh -e ssh "pi@curiosity-pi.local:/home/pi/.signalk/*" signalk

.PHONY: deploy backup

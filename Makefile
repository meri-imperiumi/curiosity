roles/marinepi-provisioning:
	ansible-galaxy install -r requirements.yml -p roles

deploy: roles/marinepi-provisioning
	ansible-playbook -i hosts -l dev playbooks/curiosity.yml --ask-vault-pass

.PHONY: deploy

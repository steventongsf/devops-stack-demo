create_vpc:
	ansible-playbook vpc_setup.yml --extra-vars @present.json
destroy_vpc:
	ansible-playbook vpc_setup.yml --extra-vars @absent.json
create_bastion:
	ansible-playbook bastion-instance.yml --extra-vars @present.json
destroy_bastion:
	ansible-playbook bastion-instance.yml --extra-vars @absent.json
create_vpc:
	ansible-playbook vpc_setup.yml --extra-vars @present.json
destroy_vpc:
	ansible-playbook vpc_setup.yml --extra-vars @absent.json
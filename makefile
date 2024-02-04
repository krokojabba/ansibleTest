ping_all:
	ansible all -i inventory.ini -u kroko -m ping

install_nginx:
	ansible-playbook playbook.yaml -i inventory.ini

connect_ssh:
	ssh kroko@51.250.94.192

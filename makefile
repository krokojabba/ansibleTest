ping_all:
	ansible all -i inventory.ini -u kroko -m ping

install_nginx:
	ansible-playbook playbook.yaml -i inventory.ini -t install

connect_ssh:
	ssh kroko@51.250.94.192

update_server:
	ansible-playbook playbook.yaml -i inventory.ini -t update

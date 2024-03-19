ping_all:
	ansible all -i inventory.ini -u kroko -m ping

install:
	ansible-playbook playbook.yaml -i inventory.ini -t install

connect_ssh:
	ssh kroko@51.250.94.192

update_server:
	ansible-playbook playbook.yaml -i inventory.ini -t update

drop_known_hosts:
	ssh-keygen -f "/home/kroko/.ssh/known_hosts" -R "51.250.94.192"
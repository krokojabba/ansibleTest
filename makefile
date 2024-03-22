ping_all:
	ansible all -i inventory.ini -u kroko -m ping

install_packages:
	ansible-playbook playbook.yaml -i inventory.ini -t packages

clone_repo:
	ansible-playbook playbook.yaml -i inventory.ini -t repo

build_project:
	ansible-playbook playbook.yaml -i inventory.ini -t build

connect_ssh:
	ssh kroko@51.250.94.192

nginx:
	ansible-playbook playbook.yaml -i inventory.ini -t nginx

drop_known_hosts:
	ssh-keygen -f "/home/kroko/.ssh/known_hosts" -R "51.250.94.192"

do_all:
	ansible-playbook playbook.yaml -i inventory.ini

demo_content:
	ansible-playbook playbook.yaml -i inventory.ini -t demo_content
all: conf_repos

ping:
	ansible all -i inventory.yaml -m ping

info:
	ansible all -i inventory.yaml -m gather_facts

conf_repos:
	ansible-playbook playbooks/conf_repos.yaml -i inventory.yaml 

fresh-install: update-repos
	./install.sh

port-forward:
	./website-port-forward.sh

test-website:
	helm uninstall kdevops-website
	helm install kdevops-website kdevops-website --values kdevops-website/values.yaml

update-repos:
	./add_repos.sh

upgrade:
	./upgrade.sh

fresh-install: update-repos
	./install.sh

port-forward:
	./website-port-forward.sh

test-website:
	helm upgrade kdevops-website kdevops-website/ --values kdevops-website/values.yaml --set website_json_conf="`cat kdevops-website/website.json | base64`"

update-repos:
	./add_repos.sh

upgrade:
	./upgrade.sh

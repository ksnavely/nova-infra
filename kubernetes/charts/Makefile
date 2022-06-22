test:
	helm uninstall kdevops-website
	helm install kdevops-website kdevops-website --values kdevops-website/values.yaml
	./website-port-forward.sh


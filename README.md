# nova-infra

Standing up projects in AWS/GCP with Terraform and Kubernetes.

Working with these two pieces of technology has been a revelation
in infra configuration and deployment orchestration.

Individual project repositories such as `ksnavely/website2` are
responsible for building images and uploading them to e.g. Dockerhub.


Including:
 - kdevops.com management
 - Trino (distributed SQL query engine)

Some cool stuff is out of band for now such as:
 - DNS management
 - Legacy EC2 instances, might import these

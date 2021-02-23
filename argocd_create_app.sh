argocd app create flask-docker --repo https://github.com/obergeru/flask-docker.git --path k8s/base --dest-server https://kubernetes.default.svc --dest-namespace default

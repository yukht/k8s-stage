To use configmap instead of directly defining environment variables in a deployment.yaml
1. Copy conf-case/env_configmap.yaml to templates/env_configmap.yaml
2. Comment 'env:' block and uncomment 'envFrom:' block in file deployment.yaml


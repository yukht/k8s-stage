# Using minikube service with tunnel
# https://minikube.sigs.k8s.io/docs/handbook/accessing
Using minikube tunnel

Services of type LoadBalancer can be exposed via the minikube tunnel command
It must be run in a separate terminal window to keep the LoadBalancer running
Ctrl-C in the terminal can be used to terminate the process at which time the network routes will be cleaned up.
Example of LoadBalancer

1) Run the tunnel in a separate terminal

It will ask for a password.

minikube tunnel &

2) Create a Kubernetes deployment

3) Create a Kubernetes service with type LoadBalancer

4) Check the external IP

kubectl get svc


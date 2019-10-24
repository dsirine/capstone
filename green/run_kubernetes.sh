kubectl run capstone --image=dsirine/capstone:4 --restart=Never --port=4000

kubectl get pods

kubectl port-forward capstone 1200:4000

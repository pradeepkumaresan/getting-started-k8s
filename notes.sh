kubectl cluster-info

-- to build and push a docker container image to repository
docker image build -t pradeepkumaresan/getting-started-k8s:1.0 .
docker image push pradeepkumaresan/getting-started-k8s:1.0

-- to run a pod from a container repository
kubectl apply -f pod.yml

-- to get running container status
kubectl get pods --watch
kubectl get pods -o wide
kubectl describe pods tantalizing-tutankhamun

-- to delete a pod using pod name and yaml file
kubectl delete pod nginx
kubectl delete -f multi-pod.yml
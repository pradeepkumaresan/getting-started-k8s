kubectl cluster-info

-- to build and push a docker container image to repository
docker image build \
-f <DockerfileName> \
-t pradeepkumaresan/getting-started-k8s:1.0

docker image push pradeepkumaresan/getting-started-k8s:1.0

-- to run a pod from a container repository
kubectl apply -f pod.yml

-- to get running container status
kubectl get pods
kubectl get pods --watch
kubectl get pods -o wide
kubectl get pods --show-labels
kubectl describe pods hello-pod

-- to delete a pod using pod name and yaml file
kubectl delete pod nginx
kubectl delete -f multi-pod.yml

-- creating services imperatively
kubectl expose pod hello-pod --name=hello-svc --target-port=8080 --type=NodePort

-- list services
kubectl get svc

-- service info
kubectl get service hello-svc --output yaml
-- to find external ip
kubectl get nodes --output wide

-- to delete a service 
kubectl delete svc hello-svc

-- creating services declaratively (node port)
kubectl apply -f svc-nodeport.yml

-- describe a service
kubectl describe svc ps-nodeport
kubectl delete svc ps-nodeport

-- creating services declaratively (load balancer)
kubectl apply -f svc-lb.yml

-- list deployments
kubectl get deploy

-- list replica sets
kubectl get rs 


docker run -v $PWD:/tmp tibbar/vortex:v1 -template /tmp/templates -output /tmp/deployment -varpath /tmp/environments/default.yaml

kubectl create ns nifi
kubectl create -f deployment/service.yaml --namespace=nifi
kubectl create -f deployment/statefulset.yaml --namespace=nifi

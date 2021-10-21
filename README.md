# reconnect
a reverse field guide

## Setting up Elasticsearch
1. Install [minikube](https://minikube.sigs.k8s.io/docs/start/)
2. Start minikube `minikube start --cpus 4 --memory 6144`
3. Enable storage class `minikube addons enable default-storageclass`
4. Enable storage provisioner `minikube addons enable storage-provisioner`
5. Install [helm](https://helm.sh/)
6. Add elastic as a helm remote `helm repo add elastic https://helm.elastic.co`
7. Install elasticsearch chart `helm install elasticsearch  elastic/elasticsearch -f helm/elasticsearch.yaml`
8. Wait until pods are active `kubectl get pods -w`
9. Install kibana chart `helm install kibana elastic/kibana`
10. Wait until pods are active
11. Port forward elasticsearch `kubectl port-forward svc/elasticsearch-master 9200`
12. Port forward kibana `kubectl port-forward deployment/kibana-kibana 5601`

*[source](https://www.bogotobogo.com/DevOps/Docker/Docker_Kubernetes_ElasticSearch_with_Helm_minikube.php)*

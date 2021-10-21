# reconnect
a reverse field guide

## Setting up Elasticsearch
1. Install [minikube](https://minikube.sigs.k8s.io/docs/start/)
2. Start minikube `minikube start --cpus 4 --memory 6144`
3. Install [helm](https://helm.sh/)
4. Add elastic as a helm remote `helm repo add elastic https://helm.elastic.co`
5. Install elasticsearch chart `helm install elasticsearch  elastic/elasticsearch -f helm/elasticsearch.yaml`
6. Wait until pods are active `kubectl get pods -w`
7. Install kibana chart `helm install kibana elastic/kibana`
8. Wait until pods are active
9. Port forward elasticsearch `kubectl port-forward svc/elasticsearch-master 9200`
10. Port forward kibana `kubectl port-forward deployment/kibana-kibana 5601`
